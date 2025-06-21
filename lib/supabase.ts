import { createClient } from "@supabase/supabase-js"

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

// Basic vendor interface - customize this based on your actual table structure
export interface Vendor {
  id: string
  name: string
  city: string
  state: string
  // Add other fields from your vendors table here:
  // phone?: string
  // email?: string
  // website?: string
  // description?: string
  // etc.
}
