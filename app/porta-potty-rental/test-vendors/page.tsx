import VendorsGrid from "@/components/vendors-grid"

// Simple test page to quickly view your vendors data
export default function TestVendorsPage() {
  return (
    <div className="min-h-screen bg-gray-50">
      <div className="py-8">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl font-bold text-gray-900 mb-8">Vendors Database Test</h1>
          <VendorsGrid />
        </div>
      </div>
    </div>
  )
}
