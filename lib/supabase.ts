import { createClient } from "@supabase/supabase-js"

// Environment variable checks
export function getSupabaseStatus() {
  return {
    hasUrl: !!process.env.NEXT_PUBLIC_SUPABASE_URL,
    hasKey: !!process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    useSupabase: process.env.NEXT_PUBLIC_USE_SUPABASE === "true",
    urlValid: process.env.NEXT_PUBLIC_SUPABASE_URL
      ? process.env.NEXT_PUBLIC_SUPABASE_URL.startsWith("https://")
      : false,
  }
}

export function isSupabaseConfigured(): boolean {
  const status = getSupabaseStatus()
  return status.hasUrl && status.hasKey && status.urlValid && status.useSupabase
}

// Create Supabase client only if properly configured
export const supabase = isSupabaseConfigured()
  ? createClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!)
  : null

// Updated interface to match your current database structure
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
  isActive?: boolean // This should match your actual column name
  createdAt?: string
  updatedAt?: string
}

export type Database = {
  public: {
    Tables: {
      vendors: {
        Row: Vendor
        Insert: Omit<Vendor, "id" | "createdAt" | "updatedAt">
        Update: Partial<Omit<Vendor, "id" | "createdAt" | "updatedAt">>
      }
    }
  }
}
