"use client"

import type React from "react"
import { useState } from "react"
import { Button } from "@/components/ui/button"
import PageBackground from "@/components/page-background"

export default function ContactPageClient() {
  const [formData, setFormData] = useState({
    name: "",
    email: "",
    subject: "",
    message: "",
  })

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    // Handle form submission here
    console.log("Form submitted:", formData)
    alert("Thank you for your message! We'll get back to you soon.")
    setFormData({ name: "", email: "", subject: "", message: "" })
  }

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    })
  }

  return (
    <PageBackground variant="default">
      <div className="min-h-screen py-12">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
          {/* Header */}
          <div className="text-center mb-12">
            <h1 className="text-4xl font-bold text-gray-900 mb-4 text-shadow-strong">
              Get in Touch with Porta Potty Directory
            </h1>
            <p className="text-lg text-gray-700 text-shadow-soft max-w-3xl mx-auto">
              Have questions about porta potty rentals near you? Whether you're a vendor looking to list your services
              or a customer searching for portable toilet options, reach out through the form below. We'll get back to
              you as soon as possible.
            </p>
          </div>

          {/* Contact Form */}
          <div className="bg-white rounded-lg shadow-card p-8 lg:p-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-8 text-center">Send us a Message</h2>

            <form onSubmit={handleSubmit} className="space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="name" className="block text-sm font-medium text-gray-700 mb-2">
                    Full Name *
                  </label>
                  <input
                    type="text"
                    id="name"
                    name="name"
                    required
                    value={formData.name}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none transition-colors duration-200"
                    placeholder="Enter your full name"
                  />
                </div>

                <div>
                  <label htmlFor="email" className="block text-sm font-medium text-gray-700 mb-2">
                    Email Address *
                  </label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    required
                    value={formData.email}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none transition-colors duration-200"
                    placeholder="Enter your email address"
                  />
                </div>
              </div>

              <div>
                <label htmlFor="subject" className="block text-sm font-medium text-gray-700 mb-2">
                  Subject *
                </label>
                <select
                  id="subject"
                  name="subject"
                  required
                  value={formData.subject}
                  onChange={handleChange}
                  className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none transition-colors duration-200"
                >
                  <option value="">Select a subject</option>
                  <option value="general">General Inquiry</option>
                  <option value="vendor">Vendor Partnership</option>
                  <option value="customer-support">Customer Support</option>
                  <option value="list-business">List My Porta Potty Business</option>
                  <option value="technical">Technical Issue</option>
                  <option value="other">Other</option>
                </select>
              </div>

              <div>
                <label htmlFor="message" className="block text-sm font-medium text-gray-700 mb-2">
                  Message *
                </label>
                <textarea
                  id="message"
                  name="message"
                  required
                  rows={6}
                  value={formData.message}
                  onChange={handleChange}
                  className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-primary-500 outline-none resize-vertical transition-colors duration-200"
                  placeholder="Please provide details about your inquiry, including your location if you're looking for porta potty rentals..."
                />
              </div>

              <div className="text-center">
                <Button
                  type="submit"
                  className="w-full md:w-auto px-8 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-lg shadow-modern hover:shadow-modern-lg transition-all duration-200"
                >
                  Send Message
                </Button>
              </div>
            </form>
          </div>

          {/* Additional Info */}
          <div className="mt-12 text-center">
            <div className="bg-primary-50 rounded-xl p-6 max-w-2xl mx-auto">
              <h3 className="text-lg font-semibold text-gray-900 mb-2">Looking to List Your Business?</h3>
              <p className="text-gray-600 mb-4">
                Join hundreds of porta potty rental companies already growing their business with our directory.
              </p>
              <a
                href="/porta-potty-rental/add-business"
                className="inline-flex items-center px-6 py-2 bg-primary-600 text-white font-medium rounded-lg hover:bg-primary-700 transition-colors duration-200"
              >
                Add Your Business
              </a>
            </div>
          </div>
        </div>
      </div>
    </PageBackground>
  )
}
