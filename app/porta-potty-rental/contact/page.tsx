import type { Metadata } from "next"
import ContactPageClient from "./ContactPageClient"

export const metadata: Metadata = {
  title: "Contact Porta Potty Directory - Get in Touch",
  description:
    "Have questions about porta potty rentals near you? Contact our team for vendor partnerships or customer support. We help connect you with the best portable toilet rental services.",
  keywords: [
    "contact porta potty directory",
    "porta potty rental questions",
    "portable toilet vendor partnership",
    "porta potty rental support",
    "list porta potty business",
  ],
}

export default function ContactPage() {
  return <ContactPageClient />
}
