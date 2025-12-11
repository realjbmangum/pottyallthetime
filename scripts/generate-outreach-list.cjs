const XLSX = require("xlsx");
const fs = require("fs");

// Load nc2.xlsx (primary source with emails)
const wb = XLSX.readFile("data/nc2.xlsx");
const sheet = wb.Sheets[wb.SheetNames[0]];
const nc2Data = XLSX.utils.sheet_to_json(sheet);

console.log("=== SOURCE DATA ===");
console.log("nc2.xlsx total rows:", nc2Data.length);

// Count rows with valid emails
const withEmail = nc2Data.filter(r => r.email && r.email.includes("@"));
console.log("Rows with valid email:", withEmail.length);

// Dedupe by email (lowercase)
const emailMap = new Map();
withEmail.forEach(r => {
  const email = r.email.toLowerCase().trim();
  if (!emailMap.has(email)) {
    emailMap.set(email, r);
  }
});

console.log("Unique emails:", emailMap.size);

// Show duplicates found
console.log("\n=== DUPLICATES REMOVED ===");
const allEmails = withEmail.map(r => r.email.toLowerCase().trim());
const emailCounts = {};
allEmails.forEach(e => emailCounts[e] = (emailCounts[e] || 0) + 1);
const dupes = Object.entries(emailCounts).filter(([e, c]) => c > 1);
console.log("Duplicate emails found:", dupes.length);
dupes.slice(0, 15).forEach(([email, count]) => {
  console.log("  -", email, "(" + count + "x)");
});

// Build final vendor list from unique emails
const vendors = Array.from(emailMap.values()).map(r => {
  const slug = r.name.toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-|-$/g, "");

  const stateSlug = (r.state || "north-carolina").toLowerCase().replace(/ /g, "-");
  const citySlug = (r.city || "unknown").toLowerCase().replace(/ /g, "-");

  return {
    email: r.email.toLowerCase().trim(),
    business_name: r.name,
    city: r.city || "Unknown",
    state: r.state || "North Carolina",
    listing_url: "https://pottydirectory.com/" + stateSlug + "/" + citySlug + "/" + slug,
    phone: r.phone || "",
    website: r.site || ""
  };
});

console.log("\n=== FINAL OUTPUT ===");
console.log("Total unique vendors for outreach:", vendors.length);

// Write CSV
const csv = [
  "email,business_name,city,state,listing_url,phone,website",
  ...vendors.map(v =>
    [v.email, '"' + v.business_name.replace(/"/g, '""') + '"', v.city, v.state, v.listing_url, v.phone, v.website].join(",")
  )
].join("\n");

fs.writeFileSync("data/outreach-list.csv", csv);
console.log("Written to data/outreach-list.csv");

// Write JSON
fs.writeFileSync("data/outreach-list.json", JSON.stringify(vendors, null, 2));
console.log("Written to data/outreach-list.json");

// Update tracking file
const tracking = {
  campaign: "potty-directory-claim-listing",
  started: null,
  template: "claim-listing",
  total_recipients: vendors.length,
  data_source: "/Users/jbm/pottydirectory/data/outreach-list.csv",
  sent: [],
  failed: [],
  pending: vendors.map(v => v.email)
};

const trackingPath = "/Users/jbm/.claude/skills/email-outreach-agent/tracking/outreach-tracking.json";
fs.writeFileSync(trackingPath, JSON.stringify(tracking, null, 2));
console.log("Updated tracking file with", vendors.length, "pending emails");
