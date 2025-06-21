"use client"

import { useEffect, useState } from "react"
import { createClientComponentClient } from "@supabase/auth-helpers-nextjs"

interface Vendor {
  id: string
  name: string
  description: string
  imageUrl: string
  isActive: boolean
}

const VendorsGrid = () => {
  const [vendors, setVendors] = useState<Vendor[]>([])
  const [loading, setLoading] = useState(true)
  const supabase = createClientComponentClient()

  useEffect(() => {
    const fetchVendors = async () => {
      try {
        const { data, error: supabaseError } = await supabase
          .from("vendors")
          .select("*")
          .eq("isActive", true) // Make sure this matches your actual column name
          .order("name")

        if (supabaseError) {
          console.error("Error fetching vendors:", supabaseError)
        }

        if (data) {
          setVendors(data)
        }
      } catch (error) {
        console.error("Unexpected error fetching vendors:", error)
      } finally {
        setLoading(false)
      }
    }

    fetchVendors()
  }, [supabase])

  if (loading) {
    return <div>Loading vendors...</div>
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
      {vendors.map((vendor) => (
        <div key={vendor.id} className="bg-white rounded-lg shadow-md p-4">
          <img
            src={vendor.imageUrl || "/placeholder.svg"}
            alt={vendor.name}
            className="w-full h-48 object-cover rounded-md mb-2"
          />
          <h3 className="text-lg font-semibold">{vendor.name}</h3>
          <p className="text-gray-600">{vendor.description}</p>
        </div>
      ))}
    </div>
  )
}

export default VendorsGrid
