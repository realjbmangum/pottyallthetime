import { createClient } from "@supabase/supabase-js"

// Get environment variables with fallbacks and validation
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL?.trim() || ""
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY?.trim() || ""

// Validate URL format
const isValidUrl = (url: string): boolean => {
  if (!url) return false
  try {
    new URL(url)
    return url.startsWith("https://") && url.includes(".supabase.co")
  } catch {
    return false
  }
}

// Validate environment variables
const isUrlValid = isValidUrl(supabaseUrl)
const isKeyValid = supabaseAnonKey.length > 0

if (process.env.NODE_ENV === "development") {
  console.log("Supabase Configuration Check:")
  console.log("- URL provided:", !!supabaseUrl)
  console.log("- URL valid format:", isUrlValid)
  console.log("- Key provided:", !!supabaseAnonKey)
  console.log("- Key valid length:", isKeyValid)
}

// Only create client if we have valid credentials
export const supabase = isUrlValid && isKeyValid ? createClient(supabaseUrl, supabaseAnonKey) : null

// Basic vendor interface - customize this based on your actual table structure
export interface Vendor {
  id: string
  name: string
  city: string
  state: string
  phone?: string
  email?: string
  website?: string
  description?: string
  features?: {
    urinal?: boolean
    handWashing?: boolean
    sanitizer?: boolean
    lockingDoor?: boolean
    mirror?: boolean
  }
  type?: "Standard" | "Luxury"
  dailyRate?: number
  slug?: string
  latitude?: number
  longitude?: number
  serviceAreas?: string[]
  rating?: number
  reviewCount?: number
  yearsInBusiness?: number
  isActive?: boolean
  createdAt?: string
  updatedAt?: string
}

// Helper function to check if Supabase is configured
export const isSupabaseConfigured = (): boolean => {
  return !!(isUrlValid && isKeyValid && supabase)
}

// Helper function to get configuration status
export const getSupabaseStatus = () => {
  return {
    configured: isSupabaseConfigured(),
    hasUrl: !!supabaseUrl,
    hasKey: !!supabaseAnonKey,
    urlValid: isUrlValid,
    keyValid: isKeyValid,
    url: supabaseUrl ? `${supabaseUrl.substring(0, 20)}...` : "Not provided",
  }
}
