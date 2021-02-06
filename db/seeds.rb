# frozen_string_literal: true

# rubocop:disable Rails/Output

puts 'Running Seed file'

# Create Businesses
Business.find_or_create_by(id: 1, name: 'Applaud', business_type: 0,
                           description: 'Applaud Cafe with nice hot chocolates and afternoon tea')
Business.find_or_create_by(id: 2, name: 'Grazing Sheep', business_type: 0,
                           description: 'Grazing Sheep is a great place for brunch')
Business.find_or_create_by(id: 3, name: '92 Noodle Bar', business_type: 1,
                           description: 'Amazing Authentic Chinese food')
puts 'Created businesses'

# Create Locations
Location.find_or_create_by(city: 'Ipswich', street_address: '19 St Peters Street, IP1 1XF Ipswich, Suffolk',
                           latitude: 52.0540763, longitude: 1.1535335, business_id: 1)
Location.find_or_create_by(city: 'Ipswich', street_address: '15a Regatta Quay, IP4 1FH Ipswich, Suffolk',
                           latitude: 52.0523816477, longitude: 1.15813079077, business_id: 2)
Location.find_or_create_by(city: 'Ipswich', street_address: '92 Fore Street, IP4 1LB, Ipswich, Suffolk',
                           latitude: 52.0531007483, longitude: 1.16168886423, business_id: 3)
puts 'Created locations'

# rubocop:enable Rails/Output
