# frozen_string_literal: true

# Create Businesses
Business.find_or_create_by(id: 1, name: "Test", business_type: "Test", description: "Testing")

# Create Locations
Location.find_or_create_by(city: "Test City", street_address: "Test Road", longitude: 123, latitude: 321, business_id: 1)
