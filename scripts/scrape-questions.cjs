/**
 * Question Research Scraper for Directory Factory
 *
 * This script scrapes user questions from various sources (Reddit, Quora, Google PAA)
 * to identify content opportunities for SEO. It reads configuration from the
 * question-research-spec.json file.
 *
 * Usage:
 *   node scripts/scrape-questions.cjs [--niche="porta potty"] [--output-dir=./data]
 *
 * The script will:
 *   1. Load the spec configuration
 *   2. Scrape questions from enabled sources
 *   3. Deduplicate and cluster questions
 *   4. Score and prioritize questions
 *   5. Generate a content plan
 */

const fs = require('fs');
const path = require('path');
const https = require('https');

// ============================================================================
// CONFIGURATION
// ============================================================================

const SPEC_PATH = path.join(__dirname, 'question-research-spec.json');
const DEFAULT_OUTPUT_DIR = path.join(__dirname, '..', 'data');

// Parse command line arguments
const args = process.argv.slice(2).reduce((acc, arg) => {
  const [key, value] = arg.replace('--', '').split('=');
  acc[key] = value || true;
  return acc;
}, {});

const NICHE = args.niche || 'porta potty';
const OUTPUT_DIR = args['output-dir'] || DEFAULT_OUTPUT_DIR;

// ============================================================================
// SPEC LOADER
// ============================================================================

function loadSpec() {
  try {
    const specContent = fs.readFileSync(SPEC_PATH, 'utf-8');
    const spec = JSON.parse(specContent);
    console.log(`✓ Loaded spec v${spec.specVersion}: ${spec.name}`);
    return spec;
  } catch (error) {
    console.error('✗ Failed to load spec:', error.message);
    process.exit(1);
  }
}

// ============================================================================
// HTTP UTILITIES
// ============================================================================

function fetchUrl(url, options = {}) {
  return new Promise((resolve, reject) => {
    const urlObj = new URL(url);
    const requestOptions = {
      hostname: urlObj.hostname,
      path: urlObj.pathname + urlObj.search,
      method: 'GET',
      headers: {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36',
        'Accept': 'application/json, text/html',
        ...options.headers
      }
    };

    const req = https.request(requestOptions, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        if (res.statusCode >= 200 && res.statusCode < 300) {
          resolve({ data, statusCode: res.statusCode });
        } else {
          reject(new Error(`HTTP ${res.statusCode}: ${url}`));
        }
      });
    });

    req.on('error', reject);
    req.setTimeout(options.timeout || 10000, () => {
      req.destroy();
      reject(new Error(`Timeout: ${url}`));
    });
    req.end();
  });
}

async function delay(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

// ============================================================================
// REDDIT SCRAPER
// ============================================================================

/**
 * Check if a post title is actually relevant to the niche
 * Filters out noise like video game references, jokes, etc.
 */
function isRelevantQuestion(title, selftext, niche) {
  const fullText = `${title} ${selftext}`.toLowerCase();
  const nicheTerms = niche.toLowerCase().split(' ');

  // Must contain the niche term
  const containsNiche = nicheTerms.every(term => fullText.includes(term)) ||
    fullText.includes('portable toilet') ||
    fullText.includes('portable restroom') ||
    fullText.includes('porta john') ||
    fullText.includes('port-a-potty');

  if (!containsNiche) return false;

  // Filter out irrelevant contexts (video games, jokes, memes)
  const excludePatterns = [
    /helldivers/i,
    /video game/i,
    /jackass/i,
    /prank/i,
    /meme/i,
    /l4d/i,
    /left 4 dead/i,
    /game.*ranked/i,
    /ranked.*game/i,
    /slip it in/i,
    /written on the wall/i,
    /graffiti/i,
    /funniest.*seen/i
  ];

  for (const pattern of excludePatterns) {
    if (pattern.test(fullText)) return false;
  }

  // Boost relevance for rental/business-related questions
  const relevanceTerms = [
    'rent', 'rental', 'cost', 'price', 'how many', 'need', 'wedding',
    'event', 'construction', 'osha', 'clean', 'service', 'delivery',
    'work', 'smell', 'sanitary', 'require', 'regulation', 'ada',
    'business', 'party', 'festival', 'backyard'
  ];

  const hasRelevanceTerm = relevanceTerms.some(term => fullText.includes(term));

  return hasRelevanceTerm || title.includes('?');
}

async function scrapeReddit(spec, niche) {
  console.log('\n📱 Scraping Reddit...');
  const questions = [];
  const config = spec.sources.reddit;

  if (!config.enabled) {
    console.log('  ⏭ Reddit scraping disabled in spec');
    return questions;
  }

  const searchQueries = config.searchPatterns.map(pattern =>
    pattern.replace('{niche}', niche)
  );

  for (const query of searchQueries) {
    try {
      // Use Reddit's JSON API (append .json to search URL)
      const searchUrl = `https://www.reddit.com/search.json?q=${encodeURIComponent(query)}&limit=${config.resultsPerQuery}&sort=relevance&t=year`;

      console.log(`  🔍 Searching: "${query}"`);

      const response = await fetchUrl(searchUrl);
      const data = JSON.parse(response.data);

      if (data.data && data.data.children) {
        for (const post of data.data.children) {
          const postData = post.data;
          const title = postData.title || '';
          const selftext = postData.selftext || '';
          const fullText = `${title} ${selftext}`.toLowerCase();

          // Check if it contains question indicators
          const isQuestion = config.questionIndicators.some(indicator =>
            fullText.includes(indicator.toLowerCase())
          );

          // Must be a question AND relevant to the niche
          if ((isQuestion || title.includes('?')) && isRelevantQuestion(title, selftext, niche)) {
            questions.push({
              source: 'reddit',
              subreddit: postData.subreddit,
              question: title,
              context: selftext.substring(0, 500),
              url: `https://reddit.com${postData.permalink}`,
              score: postData.score || 0,
              numComments: postData.num_comments || 0,
              createdUtc: postData.created_utc,
              scraped: new Date().toISOString()
            });
          }
        }
      }

      // Rate limiting
      await delay(2000);

    } catch (error) {
      console.log(`  ⚠ Error searching "${query}": ${error.message}`);
    }
  }

  // Also search specific subreddits
  for (const subreddit of config.targetSubreddits.slice(0, 5)) {
    try {
      const subredditUrl = `https://www.reddit.com/r/${subreddit}/search.json?q=${encodeURIComponent(niche)}&restrict_sr=on&limit=25&sort=relevance&t=all`;

      console.log(`  📍 Searching r/${subreddit}`);

      const response = await fetchUrl(subredditUrl);
      const data = JSON.parse(response.data);

      if (data.data && data.data.children) {
        for (const post of data.data.children) {
          const postData = post.data;
          const title = postData.title || '';
          const selftext = postData.selftext || '';

          if ((title.includes('?') || config.questionIndicators.some(i => title.toLowerCase().includes(i.toLowerCase()))) &&
              isRelevantQuestion(title, selftext, niche)) {
            questions.push({
              source: 'reddit',
              subreddit: postData.subreddit,
              question: title,
              context: selftext.substring(0, 500),
              url: `https://reddit.com${postData.permalink}`,
              score: postData.score || 0,
              numComments: postData.num_comments || 0,
              createdUtc: postData.created_utc,
              scraped: new Date().toISOString()
            });
          }
        }
      }

      await delay(2000);

    } catch (error) {
      console.log(`  ⚠ Error in r/${subreddit}: ${error.message}`);
    }
  }

  console.log(`  ✓ Found ${questions.length} questions from Reddit`);
  return questions;
}

// ============================================================================
// GOOGLE PEOPLE ALSO ASK SIMULATION
// ============================================================================

function generatePAAQuestions(spec, niche) {
  console.log('\n🔎 Generating Google PAA-style questions...');
  const config = spec.sources.googlePAA;

  if (!config.enabled) {
    console.log('  ⏭ Google PAA disabled in spec');
    return [];
  }

  // Since we can't directly scrape Google PAA without an API,
  // we'll use the known patterns from the spec and common question formats
  const questionTemplates = [
    `How much does {niche} rental cost?`,
    `How many {niche}s do I need for my event?`,
    `How do {niche}s work?`,
    `Can you poop in a {niche}?`,
    `What is the blue liquid in {niche}s?`,
    `Where does {niche} waste go?`,
    `Are {niche}s sanitary?`,
    `How often are {niche}s cleaned?`,
    `Do {niche}s smell?`,
    `How to keep {niche} from smelling?`,
    `What size {niche} do I need?`,
    `How much does it cost to rent a {niche} for a day?`,
    `How much does a {niche} cost per month?`,
    `How many {niche}s for 100 guests?`,
    `How many {niche}s for a wedding?`,
    `How many {niche}s per person?`,
    `What are OSHA {niche} requirements?`,
    `Do I need a {niche} for construction?`,
    `What is the difference between {niche} and restroom trailer?`,
    `Should I rent or buy a {niche}?`,
    `How long can you rent a {niche}?`,
    `What comes with a {niche} rental?`,
    `Do {niche}s have hand sanitizer?`,
    `Can {niche}s tip over?`,
    `Do {niche}s work in cold weather?`,
    `How are {niche}s emptied?`,
    `What ADA requirements apply to {niche}s?`,
    `How big is a standard {niche}?`,
    `How much waste can a {niche} hold?`,
    `What questions to ask before renting a {niche}?`,
    `Is there a luxury {niche} option?`,
    `What is a handicap {niche}?`,
    `How far in advance should I book a {niche}?`,
    `Can you put a {niche} on grass?`,
    `Where should I place a {niche}?`,
    `Do {niche} rentals include delivery?`,
    `What are hidden fees for {niche} rental?`,
    `How to decorate a {niche} for a wedding?`,
    `What is a flushable {niche}?`,
    `How do {niche}s get water?`
  ];

  const questions = questionTemplates.map(template => ({
    source: 'google_paa_simulated',
    question: template.replace(/{niche}/g, niche),
    category: categorizeQuestion(template, spec),
    priority: 'medium',
    scraped: new Date().toISOString()
  }));

  console.log(`  ✓ Generated ${questions.length} PAA-style questions`);
  return questions;
}

// ============================================================================
// KNOWN HIGH-VALUE QUESTIONS
// ============================================================================

function loadKnownQuestions(spec) {
  console.log('\n📚 Loading known high-value questions from spec...');

  const knownQuestions = spec.knownHighValueQuestions.questions.map(q => ({
    source: 'spec_known',
    question: q.question,
    category: q.category,
    priority: q.priority,
    searchVolume: q.searchVolume,
    currentlyCovered: q.currentlyCovered,
    scraped: new Date().toISOString()
  }));

  console.log(`  ✓ Loaded ${knownQuestions.length} known questions`);
  return knownQuestions;
}

// ============================================================================
// QUESTION PROCESSING
// ============================================================================

function categorizeQuestion(question, spec) {
  const lowerQuestion = question.toLowerCase();
  const categories = spec.processing.clustering.categories;

  for (const cat of categories) {
    if (cat.keywords.some(kw => lowerQuestion.includes(kw.toLowerCase()))) {
      return cat.name;
    }
  }

  return 'general';
}

function calculateSimilarity(str1, str2) {
  const s1 = str1.toLowerCase().replace(/[^a-z0-9\s]/g, '');
  const s2 = str2.toLowerCase().replace(/[^a-z0-9\s]/g, '');

  const words1 = new Set(s1.split(/\s+/));
  const words2 = new Set(s2.split(/\s+/));

  const intersection = new Set([...words1].filter(x => words2.has(x)));
  const union = new Set([...words1, ...words2]);

  return intersection.size / union.size;
}

function deduplicateQuestions(questions, spec) {
  console.log('\n🔄 Deduplicating questions...');
  const threshold = spec.processing.deduplication.similarityThreshold;
  const unique = [];

  for (const q of questions) {
    const isDuplicate = unique.some(existing =>
      calculateSimilarity(existing.question, q.question) > threshold
    );

    if (!isDuplicate) {
      unique.push(q);
    }
  }

  console.log(`  ✓ Reduced ${questions.length} → ${unique.length} unique questions`);
  return unique;
}

function clusterQuestions(questions, spec) {
  console.log('\n📊 Clustering questions by category...');

  const clustered = questions.map(q => ({
    ...q,
    category: q.category || categorizeQuestion(q.question, spec)
  }));

  // Count by category
  const categoryCounts = {};
  for (const q of clustered) {
    categoryCounts[q.category] = (categoryCounts[q.category] || 0) + 1;
  }

  console.log('  Category distribution:');
  Object.entries(categoryCounts)
    .sort((a, b) => b[1] - a[1])
    .forEach(([cat, count]) => {
      console.log(`    ${cat}: ${count}`);
    });

  return clustered;
}

function scoreAndPrioritize(questions, spec) {
  console.log('\n⭐ Scoring and prioritizing questions...');

  const scoring = spec.processing.prioritization.scoring;

  const scored = questions.map(q => {
    let score = 0;

    // Frequency weight (based on how many times similar questions appear)
    const frequency = questions.filter(other =>
      calculateSimilarity(q.question, other.question) > 0.5
    ).length;
    score += (frequency / questions.length) * scoring.frequency.weight;

    // Recency weight
    if (q.createdUtc) {
      const ageMonths = (Date.now() / 1000 - q.createdUtc) / (30 * 24 * 60 * 60);
      const recencyScore = Math.max(0, 1 - (ageMonths / 24)); // Decay over 24 months
      score += recencyScore * scoring.recency.weight;
    } else {
      score += 0.5 * scoring.recency.weight; // Default for unknown age
    }

    // Engagement signals
    if (q.score !== undefined || q.numComments !== undefined) {
      const engagementScore = Math.min(1, ((q.score || 0) + (q.numComments || 0) * 2) / 100);
      score += engagementScore * scoring.engagementSignals.weight;
    } else {
      score += 0.3 * scoring.engagementSignals.weight;
    }

    // Competitor gap (boost if not currently covered)
    if (q.currentlyCovered === false) {
      score += scoring.competitorGap.weight;
    } else if (q.currentlyCovered === undefined) {
      score += scoring.competitorGap.weight * 0.5;
    }

    // Priority boost
    if (q.priority === 'high') score += 0.2;
    if (q.searchVolume === 'high') score += 0.15;

    return {
      ...q,
      finalScore: Math.round(score * 100) / 100
    };
  });

  // Sort by score
  scored.sort((a, b) => b.finalScore - a.finalScore);

  console.log(`  ✓ Scored ${scored.length} questions`);
  console.log(`  Top 5 questions:`);
  scored.slice(0, 5).forEach((q, i) => {
    console.log(`    ${i + 1}. [${q.finalScore}] ${q.question.substring(0, 60)}...`);
  });

  return scored;
}

// ============================================================================
// CONTENT PLAN GENERATOR
// ============================================================================

function generateContentPlan(questions, spec) {
  console.log('\n📝 Generating content plan...');

  const planConfig = spec.output.contentPlanStructure;

  // FAQ questions - top questions that can be answered briefly
  const faqQuestions = questions
    .filter(q => !q.currentlyCovered)
    .slice(0, planConfig.faqQuestions.count)
    .map(q => ({
      question: q.question,
      category: q.category,
      score: q.finalScore,
      suggestedWordCount: 150
    }));

  // Blog topics - questions that need longer content
  const blogCategories = ['how_it_works', 'regulations_compliance', 'event_specific', 'construction_specific'];
  const blogTopics = questions
    .filter(q => blogCategories.includes(q.category) && !q.currentlyCovered)
    .slice(0, planConfig.blogTopics.count)
    .map(q => ({
      title: q.question.replace('?', ''),
      category: q.category,
      score: q.finalScore,
      suggestedWordCount: 1500,
      contentType: spec.processing.clustering.categories.find(c => c.name === q.category)?.contentType || 'blog_post'
    }));

  // Calculator ideas
  const calculatorQuestions = questions
    .filter(q => q.category === 'quantity_calculation' || q.question.toLowerCase().includes('how many'))
    .slice(0, planConfig.calculatorIdeas.count)
    .map(q => ({
      question: q.question,
      toolType: 'calculator',
      score: q.finalScore
    }));

  // Comparison articles
  const comparisonQuestions = questions
    .filter(q => q.category === 'comparison')
    .slice(0, planConfig.comparisonArticles.count)
    .map(q => ({
      question: q.question,
      contentType: 'comparison_article',
      score: q.finalScore,
      suggestedWordCount: 1200
    }));

  const plan = {
    generatedAt: new Date().toISOString(),
    niche: NICHE,
    totalQuestionsAnalyzed: questions.length,

    faq: {
      description: planConfig.faqQuestions.description,
      count: faqQuestions.length,
      questions: faqQuestions
    },

    blog: {
      description: planConfig.blogTopics.description,
      count: blogTopics.length,
      topics: blogTopics
    },

    calculators: {
      description: planConfig.calculatorIdeas.description,
      count: calculatorQuestions.length,
      ideas: calculatorQuestions
    },

    comparisons: {
      description: planConfig.comparisonArticles.description,
      count: comparisonQuestions.length,
      articles: comparisonQuestions
    },

    summary: {
      contentGaps: questions.filter(q => !q.currentlyCovered).length,
      highPriorityTopics: questions.filter(q => q.priority === 'high' && !q.currentlyCovered).length,
      categoryBreakdown: getCategoryBreakdown(questions)
    }
  };

  return plan;
}

function getCategoryBreakdown(questions) {
  const breakdown = {};
  for (const q of questions) {
    breakdown[q.category] = (breakdown[q.category] || 0) + 1;
  }
  return breakdown;
}

// ============================================================================
// OUTPUT
// ============================================================================

function saveResults(rawQuestions, processedQuestions, contentPlan, spec) {
  console.log('\n💾 Saving results...');

  // Ensure output directory exists
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });
  }

  // Save raw questions
  const rawPath = path.join(OUTPUT_DIR, spec.output.formats.raw.filename);
  fs.writeFileSync(rawPath, JSON.stringify(rawQuestions, null, 2));
  console.log(`  ✓ Saved raw questions: ${rawPath}`);

  // Save processed questions
  const processedPath = path.join(OUTPUT_DIR, spec.output.formats.processed.filename);
  fs.writeFileSync(processedPath, JSON.stringify(processedQuestions, null, 2));
  console.log(`  ✓ Saved processed questions: ${processedPath}`);

  // Save content plan
  const planPath = path.join(OUTPUT_DIR, spec.output.formats.contentPlan.filename);
  fs.writeFileSync(planPath, JSON.stringify(contentPlan, null, 2));
  console.log(`  ✓ Saved content plan: ${planPath}`);

  return { rawPath, processedPath, planPath };
}

// ============================================================================
// MAIN
// ============================================================================

async function main() {
  console.log('═══════════════════════════════════════════════════════════════');
  console.log('  DIRECTORY FACTORY - QUESTION RESEARCH SCRAPER');
  console.log('═══════════════════════════════════════════════════════════════');
  console.log(`  Niche: ${NICHE}`);
  console.log(`  Output: ${OUTPUT_DIR}`);
  console.log('═══════════════════════════════════════════════════════════════');

  // Load spec
  const spec = loadSpec();

  // Collect questions from all sources
  const allQuestions = [];

  // 1. Scrape Reddit
  const redditQuestions = await scrapeReddit(spec, NICHE);
  allQuestions.push(...redditQuestions);

  // 2. Generate PAA-style questions
  const paaQuestions = generatePAAQuestions(spec, NICHE);
  allQuestions.push(...paaQuestions);

  // 3. Load known high-value questions
  const knownQuestions = loadKnownQuestions(spec);
  allQuestions.push(...knownQuestions);

  // Save raw questions
  const rawQuestions = [...allQuestions];

  // Process questions
  let processed = deduplicateQuestions(allQuestions, spec);
  processed = clusterQuestions(processed, spec);
  processed = scoreAndPrioritize(processed, spec);

  // Generate content plan
  const contentPlan = generateContentPlan(processed, spec);

  // Save all results
  const outputPaths = saveResults(rawQuestions, processed, contentPlan, spec);

  // Print summary
  console.log('\n═══════════════════════════════════════════════════════════════');
  console.log('  SUMMARY');
  console.log('═══════════════════════════════════════════════════════════════');
  console.log(`  Total raw questions scraped: ${rawQuestions.length}`);
  console.log(`  Unique questions after dedup: ${processed.length}`);
  console.log(`  FAQ questions identified: ${contentPlan.faq.count}`);
  console.log(`  Blog topics identified: ${contentPlan.blog.count}`);
  console.log(`  Calculator ideas: ${contentPlan.calculators.count}`);
  console.log(`  Comparison articles: ${contentPlan.comparisons.count}`);
  console.log('═══════════════════════════════════════════════════════════════');
  console.log('\n✅ Question research complete!\n');
  console.log('Next steps:');
  console.log(`  1. Review content plan: ${outputPaths.planPath}`);
  console.log('  2. Generate FAQ content for your site');
  console.log('  3. Create blog posts for top topics');
  console.log('  4. Build calculators/tools as needed');
}

// Run
main().catch(error => {
  console.error('Fatal error:', error);
  process.exit(1);
});
