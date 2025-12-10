const https = require('https');

const data = JSON.stringify({
  model: "grok-3-latest",
  messages: [
    {
      role: "system",
      content: "You are a senior product designer specializing in web UI/UX. Provide specific, actionable feedback with Tailwind CSS recommendations."
    },
    {
      role: "user",
      content: `I need a UI/UX design review of my directory website for portable restroom rentals.

**Site Overview:**
- Astro static site with Tailwind CSS
- Directory listing porta potty rental companies by state/city
- Target users: event planners, construction managers, homeowners needing rentals

**Key Pages:**
1. **Homepage** - Hero with tiled background image pattern, featured vendors, state browse
2. **State page** - List of cities with vendor counts
3. **City page** - Vendor cards with filtering (rating, website, open now toggles), sort dropdown
4. **Vendor detail page** - 2x2 contact grid (call=green, website=blue, email=purple, services=amber), business hours table with today highlighted, OpenStreetMap embed, social links (Instagram/LinkedIn pills)

**Current Design:**
- Primary color: Blue (#2563eb)
- Cards with gradient backgrounds (green=phone, blue=website, purple=email, amber=services)
- White cards with shadows on listing pages
- Sticky header with logo and nav
- Star ratings displayed on cards
- "Open Now" green badges on vendor cards

**Please Review:**
1. Visual hierarchy - is the information prioritized correctly?
2. Color usage - are the gradient cards effective or overwhelming?
3. Mobile responsiveness concerns
4. CTA effectiveness - are call/contact actions prominent enough?
5. Trust signals - what is missing to build credibility?
6. Conversion optimization - how can we improve lead generation?
7. Accessibility issues to watch for
8. Any UI patterns that feel dated or could be modernized

Provide specific CSS/Tailwind class recommendations where applicable.`
    }
  ],
  temperature: 0.7
});

const options = {
  hostname: 'api.x.ai',
  port: 443,
  path: '/v1/chat/completions',
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${process.env.XAI_API_KEY}`
  }
};

const req = https.request(options, (res) => {
  let body = '';
  res.on('data', chunk => body += chunk);
  res.on('end', () => {
    try {
      const json = JSON.parse(body);
      console.log(json.choices[0].message.content);
    } catch (e) {
      console.log('Error parsing response:', body);
    }
  });
});

req.on('error', (e) => console.error('Request error:', e));
req.write(data);
req.end();
