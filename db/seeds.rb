# frozen_string_literal: true

# Create Businesses in Ipswich
applaud = Business.find_or_create_by(id: 1, name: 'Applaud', business_type: 0,
                                     description: 'Applaud Cafe with nice hot chocolates and afternoon tea',
                                     opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                      'Tuesday' => '8.30 am – 4.00 pm',
                                                      'Wednesday' => '8.30 am – 4.00 pm',
                                                      'Thursday' => '8.30 am – 4.00 pm',
                                                      'Friday' => '8.30 am – 4.00 pm',
                                                      'Saturday' => '8.30 am – 4.00 pm',
                                                      'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich', street_address: '19 St Peters Street, IP1 1XF Ipswich, Suffolk',
                           latitude: 52.0540763, longitude: 1.1535335, business_id: applaud.id)
applaud.image.attach(io: File.open('files/applaud.jpg'), filename: 'applaud')

grazing_sheep = Business.find_or_create_by(id: 2, name: 'Grazing Sheep', business_type: 0,
                                           description: 'Grazing Sheep is a great place for brunch',
                                           opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                            'Tuesday' => '8.30 am – 4.00 pm',
                                                            'Wednesday' => '8.30 am – 4.00 pm',
                                                            'Thursday' => '8.30 am – 4.00 pm',
                                                            'Friday' => '8.30 am – 4.00 pm',
                                                            'Saturday' => '8.30 am – 4.00 pm',
                                                            'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich', street_address: '15a Regatta Quay, IP4 1FH Ipswich, Suffolk',
                           latitude: 52.0523816477, longitude: 1.15813079077, business_id: grazing_sheep.id)
grazing_sheep.image.attach(io: File.open('files/grazing_sheep.png'), filename: 'grazing_sheep')

noodle_bar = Business.find_or_create_by(id: 3, name: '92 Noodle Bar', business_type: 1,
                                        description: 'Amazing Authentic Chinese food',
                                        opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                         'Tuesday' => '8.30 am – 4.00 pm',
                                                         'Wednesday' => '8.30 am – 4.00 pm',
                                                         'Thursday' => '8.30 am – 4.00 pm',
                                                         'Friday' => '8.30 am – 4.00 pm',
                                                         'Saturday' => '8.30 am – 4.00 pm',
                                                         'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich', street_address: '92 Fore Street, IP4 1LB, Ipswich, Suffolk',
                           latitude: 52.0531007483, longitude: 1.16168886423, business_id: noodle_bar.id)
noodle_bar.image.attach(io: File.open('files/92_noodle_bar.jpeg'), filename: '92_noodle_bar')

hanks_pub_and_food = Business.find_or_create_by(id: 4, name: 'Hank\'s Pub & Food', business_type: 1,
                                                description: 'LGBTQ and Vegan friendly place')
Location.find_or_create_by(city: 'Ipswich', street_address: '66 St Helens Street, IP4 2LA Ipswich, Suffolk',
                           latitude: 52.0565148203, longitude: 1.16354227066, business_id: hanks_pub_and_food.id)
hanks_pub_and_food.image.attach(io: File.open('files/hanks_pub_and_food.png'), filename: 'hanks_pub_and_food')

the_green_room = Business.find_or_create_by(id: 5, name: 'The Green Room', business_type: 0,
                                            description: 'Fantastic place for coffee')
Location.find_or_create_by(city: 'Ipswich', street_address: '18 St Margaret’s Green, IP4 2BS Ipswich, Suffolk',
                           latitude: 52.0589556394, longitude: 1.15886449814, business_id: the_green_room.id)
the_green_room.image.attach(io: File.open('files/the_green_room.jpeg'), filename: 'the_green_room')

jacey_coffee_house = Business.find_or_create_by(id: 6, name: 'JaCey\'s Coffee House', business_type: 0,
                                                description: 'Friendly family run coffee shop')
Location.find_or_create_by(city: 'Ipswich', street_address: '1, St Stephens Lane, IP1 1DP Ipswich, Suffolk',
                           latitude: 52.0569, longitude: 1.15467, business_id: jacey_coffee_house.id)
jacey_coffee_house.image.attach(io: File.open('files/jacey_coffee_house.jpeg'), filename: 'jacey_coffee_house')

Location.find_or_create_by(city: 'Ipswich', street_address: '1 Dial Lane, IP1 1DJ Ipswich, Suffolk',
                           latitude: 52.0569393813, longitude: 1.15467402053,
                           business_id: Business.find_or_create_by(name: 'Pickwicks', business_type: 0,
                                                                   description: 'Ipswich\'s oldest coffee house').id)

# Create Businesses in Sheffield
Location.find_or_create_by(city: 'Sheffield',
                           street_address: 'Unit 1-2 Aberdeen Court, 97 Division Street, S1 4GE Sheffield',
                           latitude: 53.379402213, longitude: -1.47609472275,
                           business_id: Business.find_or_create_by(name: 'Steam Yard', business_type: 0,
                                                                   description: 'Best Independent Coffee Shop').id)

Location.find_or_create_by(city: 'Sheffield', street_address: '149 Arundel Street, S1 2NU Sheffield',
                           latitude: 53.3773987037, longitude: -1.46752603979,
                           business_id: Business.find_or_create_by(name: 'Tamper Coffee', business_type: 0,
                                                                   description: 'Kiwi New Zealand inpsired spot for brunch and coffee with a rustic theme').id)

Location.find_or_create_by(city: 'Sheffield', street_address: '72 Division St, Sheffield City Centre, Sheffield S1 4GF',
                           latitude: 53.379812, longitude: -1.475938,
                           business_id: Business.find_or_create_by(name: 'Lucky Fox', business_type: 1,
                                                                   description: 'Trendy craft beer and American food bar').id)

Location.find_or_create_by(city: 'Sheffield', street_address: '22 Norfolk Row, Sheffield City Centre, Sheffield S1 2PA',
                           latitude: 53.381062, longitude: -1.468187,
                           business_id: Business.find_or_create_by(name: 'Marmadukes', business_type: 0,
                                                                   description: 'Breakfast, brunch, lunch, and coffee').id)

# Create Businesses in Newcastle
Location.find_or_create_by(city: 'Newcastle Upon Tyne',
                           street_address: '17 /19 Clayton Street, NE1 5PN Newcastle upon Tyne',
                           latitude: 54.9731987597, longitude: -1.61549762974,
                           business_id: Business.find_or_create_by(name: 'Olive & Bean', business_type: 0,
                                                                   description: 'Hand made, home baked breakfasts, brunches, lunches, and cakes!').id)

Location.find_or_create_by(city: 'Newcastle Upon Tyne', street_address: 'Heber St, NE4 5TN Newcastle upon Tyne',
                           latitude: 54.973813, longitude: -1.622812,
                           business_id: Business.find_or_create_by(name: 'The Dispensary', business_type: 0,
                                                                   description: 'Great spot for breakfast and brunch in Newcastle').id)
