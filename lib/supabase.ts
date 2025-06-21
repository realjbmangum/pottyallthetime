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
  isActive?: boolean // Make sure this matches your column name
  createdAt?: string
  updatedAt?: string
}
