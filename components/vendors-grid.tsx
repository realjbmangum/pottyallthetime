"use client"

import { useEffect, useState } from "react"
import { supabase, type Vendor } from "@/lib/supabase"
import { MapPin, Loader2, AlertCircle } from "lucide-react"

export default function VendorsGrid() {
  const [vendors, setVendors] = useState<Vendor[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    async function fetchVendors() {
      try {
        setLoading(true)
        setError(null)

        const { data, error: supabaseError } = await supabase.from("vendors").select("*").order("name")

        if (supabaseError) {
          throw supabaseError
        }

        setVendors(data || [])
      } catch (err) {
        console.error("Error fetching vendors:", err)
        setError(err instanceof Error ? err.message : "Failed to fetch vendors")
      } finally {
        setLoading(false)
      }
    }

    fetchVendors()
  }, [])

  if (loading) {
    return (
      <div className="flex items-center justify-center py-12">
        <Loader2 className="h-8 w-8 animate-spin text-primary-600" />
        <span className="ml-2 text-gray-600">Loading vendors...</span>
      </div>
    )
  }

  if (error) {
    return (
      <div className="flex items-center justify-center py-12">
        <AlertCircle className="h-8 w-8 text-red-500" />
        <span className="ml-2 text-red-600">Error: {error}</span>
      </div>
    )
  }

  if (vendors.length === 0) {
    return (
      <div className="text-center py-12">
        <p className="text-gray-600">No vendors found in the database.</p>
      </div>
    )
  }

  return (
    <div className="py-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {/* Header */}
        <div className="text-center mb-8">
          <h2 className="text-3xl font-bold text-gray-900 mb-4">All Vendors</h2>
          <p className="text-gray-600">
            Found {vendors.length} vendor{vendors.length !== 1 ? "s" : ""}
          </p>
        </div>

        {/* Vendors Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
          {vendors.map((vendor) => (
            <div
              key={vendor.id}
              className="bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-200 p-6 border border-gray-200"
            >
              {/* Vendor Name */}
              <h3 className="text-lg font-semibold text-gray-900 mb-3 line-clamp-2">{vendor.name}</h3>

              {/* Location */}
              <div className="flex items-center text-gray-600 mb-4">
                <MapPin className="h-4 w-4 mr-2 text-primary-600 flex-shrink-0" />
                <span className="text-sm">
                  {vendor.city}, {vendor.state}
                </span>
              </div>

              {/* Action Button - Customize this section */}
              <button className="w-full bg-primary-600 hover:bg-primary-700 text-white py-2 px-4 rounded-md text-sm font-medium transition-colors duration-200">
                View Details
              </button>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}
