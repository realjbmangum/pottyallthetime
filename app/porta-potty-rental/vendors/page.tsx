import type { Metadata } from "next"
import VendorsGrid from "@/components/vendors-grid"
import PageBackground from "@/components/page-background"

export const metadata: Metadata = {
  title: "All Vendors - Porta Potty Directory",
  description: "Browse all porta potty rental vendors in our directory.",
}

export default function VendorsPage() {
  return (
    <PageBackground variant="default">
      <div className="min-h-screen">
        <VendorsGrid />
      </div>
    </PageBackground>
  )
}
