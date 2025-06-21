"use client"

import { useEffect, useState } from "react"
import { supabase, isSupabaseConfigured, getSupabaseStatus, type Vendor } from "@/lib/supabase"
import { Loader2, AlertCircle, Database, ExternalLink, Settings } from "lucide-react"
import VendorCard from "@/components/vendor-card"

// Mock data as fallback
const mockVendors = [
  {
    id: "mock-1",
    name: "Miami Premium Porta Potty Rental",
    city: "Miami",
    state: "FL",
    features: {
      urinal: true,
      handWashing: true,
      sanitizer: true,
      lockingDoor: true,
      mirror: true,
    },
    type: "Luxury" as const,
    dailyRate: 4 as const,
    slug: "miami-premium-porta-potty-rental-fl",
  },
  {
    id: "mock-2",
    name: "Austin Event Porta Potty Rental",
    city: "Austin",
    state: "TX",
    features: {
      urinal: false,
      handWashing: true,
      sanitizer: true,
      lockingDoor: true,
      mirror: false,
    },
    type: "Standard" as const,
    dailyRate: 2 as const,
    slug: "austin-event-porta-potty-rental-tx",
  },
  {
    id: "mock-3",
    name: "Denver Construction Porta Potty Rental",
    city: "Denver",
    state: "CO",
    features: {
      urinal: true,
      handWashing: false,
      sanitizer: true,
      lockingDoor: true,
      mirror: true,
    },
    type: "Standard" as const,
    dailyRate: 3 as const,
    slug: "denver-construction-porta-potty-rental-co",
  },
]

export default function VendorsGrid() {
  const [vendors, setVendors] = useState<Vendor[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [usingMockData, setUsingMockData] = useState(false)
  const [debugInfo, setDebugInfo] = useState<any>(null)

  useEffect(() => {
    async function fetchVendors() {
      try {
        setLoading(true)
        setError(null)

        // Check if Supabase is configured
        if (!isSupabaseConfigured()) {
          console.log("Supabase not configured, using mock data")
          setVendors(mockVendors)
          setUsingMockData(true)
          setLoading(false)
          return
        }

        if (!supabase) {
          throw new Error("Supabase client is not initialized")
        }

        // First, let's try to get the table structure to see what columns exist
        console.log("Attempting to fetch vendors...")

        // Try different approaches to handle the column name issue
        let data, supabaseError

        // First try with isActive (camelCase)
        try {
          const result = await supabase.from("vendors").select("*").eq("isActive", true).order("name")

          data = result.data
          supabaseError = result.error

          if (!supabaseError && data) {
            console.log("Success with isActive column")
            setDebugInfo({ columnUsed: "isActive", recordCount: data.length })
          }
        } catch (err) {
          console.log("Failed with isActive, trying is_active...")

          // Try with is_active (snake_case)
          try {
            const result = await supabase.from("vendors").select("*").eq("is_active", true).order("name")

            data = result.data
            supabaseError = result.error

            if (!supabaseError && data) {
              console.log("Success with is_active column")
              setDebugInfo({ columnUsed: "is_active", recordCount: data.length })
            }
          } catch (err2) {
            console.log("Failed with is_active, trying without filter...")

            // Try without the active filter to see all records
            const result = await supabase.from("vendors").select("*").order("name")

            data = result.data
            supabaseError = result.error

            if (!supabaseError && data) {
              console.log("Success without active filter")
              setDebugInfo({
                columnUsed: "none (no filter)",
                recordCount: data.length,
                sampleRecord: data[0] ? Object.keys(data[0]) : [],
              })
            }
          }
        }

        if (supabaseError) {
          console.error("Supabase error:", supabaseError)
          setVendors(mockVendors)
          setUsingMockData(true)
          setError(`Database error: ${supabaseError.message}. Showing sample data.`)
          setDebugInfo({ error: supabaseError })
        } else {
          setVendors(data || [])
          setUsingMockData(false)
          console.log(`Loaded ${data?.length || 0} vendors from database`)
        }
      } catch (err) {
        console.error("Error fetching vendors:", err)
        setVendors(mockVendors)
        setUsingMockData(true)
        setError(err instanceof Error ? err.message : "Failed to fetch vendors. Showing sample data.")
        setDebugInfo({ unexpectedError: err })
      } finally {
        setLoading(false)
      }
    }

    fetchVendors()
  }, [])

  const supabaseStatus = getSupabaseStatus()

  // Show configuration info for development
  if (!isSupabaseConfigured()) {
    return (
      <div className="py-8">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="bg-blue-50 border border-blue-200 rounded-lg p-6 mb-8">
            <div className="flex items-center">
              <Settings className="h-8 w-8 text-blue-600" />
              <div className="ml-4">
                <h3 className="text-lg font-medium text-blue-800">Supabase Configuration</h3>
                <div className="mt-2 text-sm text-blue-700">
                  <p>To connect to your Supabase database, add these environment variables:</p>
                  <ul className="mt-2 list-disc list-inside space-y-1 font-mono text-xs bg-blue-100 p-3 rounded">
                    <li>NEXT_PUBLIC_SUPABASE_URL=your_supabase_url</li>
                    <li>NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key</li>
                    <li>NEXT_PUBLIC_USE_SUPABASE=true</li>
                  </ul>
                  <div className="mt-3 space-y-1 text-xs">
                    <p>
                      <strong>Status:</strong>
                    </p>
                    <p>
                      • URL: {supabaseStatus.hasUrl ? "✓ Provided" : "✗ Missing"}{" "}
                      {supabaseStatus.urlValid ? "(Valid)" : "(Invalid format)"}
                    </p>
                    <p>• Key: {supabaseStatus.hasKey ? "✓ Provided" : "✗ Missing"}</p>
                    <p>• Use Supabase: {supabaseStatus.useSupabase ? "✓ Enabled" : "✗ Disabled"}</p>
                  </div>
                  <div className="mt-3">
                    <a
                      href="/porta-potty-rental/test-vendors"
                      className="inline-flex items-center text-blue-600 hover:text-blue-800 text-sm font-medium"
                    >
                      <ExternalLink className="h-4 w-4 mr-1" />
                      Test Database Connection
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 mb-6">
            <p className="text-yellow-800 text-sm">
              <strong>Showing sample data</strong> - Configure Supabase to see your real vendors
            </p>
          </div>

          <VendorGrid vendors={mockVendors} />
        </div>
      </div>
    )
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center py-12">
        <Loader2 className="h-8 w-8 animate-spin text-primary-600" />
        <span className="ml-2 text-gray-600">Loading vendors...</span>
      </div>
    )
  }

  if (error && !usingMockData) {
    return (
      <div className="py-8">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="bg-red-50 border border-red-200 rounded-lg p-6">
            <div className="flex items-center">
              <AlertCircle className="h-8 w-8 text-red-500" />
              <div className="ml-4">
                <h3 className="text-lg font-medium text-red-800">Database Error</h3>
                <p className="mt-2 text-sm text-red-700">{error}</p>
                {debugInfo && (
                  <details className="mt-2">
                    <summary className="cursor-pointer text-xs text-red-600">Debug Info</summary>
                    <pre className="mt-1 text-xs bg-red-100 p-2 rounded overflow-auto">
                      {JSON.stringify(debugInfo, null, 2)}
                    </pre>
                  </details>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="py-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {/* Show warning if using mock data */}
        {usingMockData && (
          <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 mb-6">
            <p className="text-yellow-800 text-sm">
              <strong>Showing sample data</strong> - {error || "Database not configured"}
            </p>
          </div>
        )}

        {/* Show debug info in development */}
        {debugInfo && process.env.NODE_ENV === "development" && (
          <div className="bg-gray-50 border border-gray-200 rounded-lg p-4 mb-6">
            <p className="text-gray-800 text-sm">
              <strong>Debug:</strong> {JSON.stringify(debugInfo)}
            </p>
          </div>
        )}

        <VendorGrid vendors={vendors} />
      </div>
    </div>
  )
}

// Separate component for rendering vendor grid
function VendorGrid({ vendors }: { vendors: Vendor[] }) {
  if (vendors.length === 0) {
    return (
      <div className="text-center py-12">
        <Database className="h-12 w-12 text-gray-400 mx-auto mb-4" />
        <h3 className="text-lg font-medium text-gray-900 mb-2">No vendors found</h3>
        <p className="text-gray-600">No vendors are currently available.</p>
      </div>
    )
  }

  return (
    <div>
      <div className="text-center mb-8">
        <h2 className="text-3xl font-bold text-gray-900 mb-4">Featured Vendors</h2>
        <p className="text-gray-600">
          {vendors.length} vendor{vendors.length !== 1 ? "s" : ""} available
        </p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {vendors.map((vendor) => (
          <VendorCard key={vendor.id} vendor={vendor} />
        ))}
      </div>
    </div>
  )
}
