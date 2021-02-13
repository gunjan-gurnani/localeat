# frozen_string_literal: true

# Create Businesses in Ipswich

####### Applaud
applaud = Business.find_or_create_by(name: 'Applaud',
                                     business_type: 0,
                                     description: Faker::Lorem.paragraph(sentence_count: 12),
                                     opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                      'Tuesday' => '8.30 am – 4.00 pm',
                                                      'Wednesday' => '8.30 am – 4.00 pm',
                                                      'Thursday' => '8.30 am – 4.00 pm',
                                                      'Friday' => '8.30 am – 4.00 pm',
                                                      'Saturday' => '8.30 am – 4.00 pm',
                                                      'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '19 St Peters Street, IP1 1XF Ipswich, Suffolk',
                           latitude: 52.0540763,
                           longitude: 1.1535335,
                           business_id: applaud.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: applaud.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: applaud.id)
end

applaud.image.attach(io: File.open('files/applaud.jpeg'), filename: 'applaud') unless applaud.image.attached?

####### Grazing Sheep
grazing_sheep = Business.find_or_create_by(name: 'Grazing Sheep',
                                           business_type: 0,
                                           description: Faker::Lorem.paragraph(sentence_count: 20),
                                           opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                            'Tuesday' => '8.30 am – 4.00 pm',
                                                            'Wednesday' => '8.30 am – 4.00 pm',
                                                            'Thursday' => '8.30 am – 4.00 pm',
                                                            'Friday' => '8.30 am – 4.00 pm',
                                                            'Saturday' => '8.30 am – 4.00 pm',
                                                            'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '15a Regatta Quay, IP4 1FH Ipswich, Suffolk',
                           latitude: 52.0523816477,
                           longitude: 1.15813079077,
                           business_id: grazing_sheep.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: grazing_sheep.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: grazing_sheep.id)
end
unless grazing_sheep.image.attached?
  grazing_sheep.image.attach(io: File.open('files/grazing_sheep.jpeg'), filename: 'grazing_sheep')
end

####### 92 Noodle Bar
noodle_bar = Business.find_or_create_by(name: '92 Noodle Bar',
                                        business_type: 1,
                                        description: Faker::Lorem.paragraph(sentence_count: 20),
                                        opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                         'Tuesday' => '8.30 am – 4.00 pm',
                                                         'Wednesday' => '8.30 am – 4.00 pm',
                                                         'Thursday' => '8.30 am – 4.00 pm',
                                                         'Friday' => '8.30 am – 4.00 pm',
                                                         'Saturday' => '8.30 am – 4.00 pm',
                                                         'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '92 Fore Street, IP4 1LB, Ipswich, Suffolk',
                           latitude: 52.0531007483,
                           longitude: 1.16168886423,
                           business_id: noodle_bar.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: noodle_bar.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: noodle_bar.id)
end
unless noodle_bar.image.attached?
  noodle_bar.image.attach(io: File.open('files/92_noodle_bar.jpeg'), filename: '92_noodle_bar')
end

####### Hanks Pub and Food
hanks_pub_and_food = Business.find_or_create_by(name: 'Hank\'s Pub & Food',
                                                business_type: 1,
                                                description: Faker::Lorem.paragraph(sentence_count: 12),
                                                opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                                 'Tuesday' => '8.30 am – 4.00 pm',
                                                                 'Wednesday' => '8.30 am – 4.00 pm',
                                                                 'Thursday' => '8.30 am – 4.00 pm',
                                                                 'Friday' => '8.30 am – 4.00 pm',
                                                                 'Saturday' => '8.30 am – 4.00 pm',
                                                                 'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '66 St Helens Street, IP4 2LA Ipswich, Suffolk',
                           latitude: 52.0565148203,
                           longitude: 1.16354227066,
                           business_id: hanks_pub_and_food.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: hanks_pub_and_food.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: hanks_pub_and_food.id)
end
unless hanks_pub_and_food.image.attached?
  hanks_pub_and_food.image.attach(io: File.open('files/hanks_pub_and_food.jpeg'), filename: 'hanks_pub_and_food')
end

####### The Green Room
the_green_room = Business.find_or_create_by(name: 'The Green Room',
                                            business_type: 0,
                                            description: Faker::Lorem.paragraph(sentence_count: 20),
                                            opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                             'Tuesday' => '8.30 am – 4.00 pm',
                                                             'Wednesday' => '8.30 am – 4.00 pm',
                                                             'Thursday' => '8.30 am – 4.00 pm',
                                                             'Friday' => '8.30 am – 4.00 pm',
                                                             'Saturday' => '8.30 am – 4.00 pm',
                                                             'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '18 St Margaret’s Green, IP4 2BS Ipswich, Suffolk',
                           latitude: 52.0589556394,
                           longitude: 1.15886449814,
                           business_id: the_green_room.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: the_green_room.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: the_green_room.id)
end
unless the_green_room.image.attached?
  the_green_room.image.attach(io: File.open('files/the_green_room.jpeg'), filename: 'the_green_room')
end

####### Jacey's Coffee House
jacey_coffee_house = Business.find_or_create_by(name: 'JaCey\'s Coffee House',
                                                business_type: 0,
                                                description: Faker::Lorem.paragraph(sentence_count: 12),
                                                opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                                 'Tuesday' => '8.30 am – 4.00 pm',
                                                                 'Wednesday' => '8.30 am – 4.00 pm',
                                                                 'Thursday' => '8.30 am – 4.00 pm',
                                                                 'Friday' => '8.30 am – 4.00 pm',
                                                                 'Saturday' => '8.30 am – 4.00 pm',
                                                                 'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '1, St Stephens Lane, IP1 1DP Ipswich, Suffolk',
                           latitude: 52.0569,
                           longitude: 1.15467,
                           business_id: jacey_coffee_house.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: jacey_coffee_house.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: jacey_coffee_house.id)
end
unless jacey_coffee_house.image.attached?
  jacey_coffee_house.image.attach(io: File.open('files/jacey_coffee_house.jpeg'), filename: 'jacey_coffee_house')
end

####### Pickwicks
pickwicks = Business.find_or_create_by(name: 'Pickwicks',
                                       business_type: 0,
                                       description: Faker::Lorem.paragraph(sentence_count: 20),
                                       opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                        'Tuesday' => '8.30 am – 4.00 pm',
                                                        'Wednesday' => '8.30 am – 4.00 pm',
                                                        'Thursday' => '8.30 am – 4.00 pm',
                                                        'Friday' => '8.30 am – 4.00 pm',
                                                        'Saturday' => '8.30 am – 4.00 pm',
                                                        'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Ipswich',
                           street_address: '1 Dial Lane, IP1 1DJ Ipswich, Suffolk',
                           latitude: 52.0569393813,
                           longitude: 1.15467402053,
                           business_id: pickwicks.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: pickwicks.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: pickwicks.id)
end
pickwicks.image.attach(io: File.open('files/pickwicks.jpeg'), filename: 'pickwicks') unless pickwicks.image.attached?

# Create Businesses in Sheffield

####### Steam Yard
steam_yard = Business.find_or_create_by(name: 'Steam Yard',
                                        business_type: 0,
                                        description: Faker::Lorem.paragraph(sentence_count: 20),
                                        opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                         'Tuesday' => '8.30 am – 4.00 pm',
                                                         'Wednesday' => '8.30 am – 4.00 pm',
                                                         'Thursday' => '8.30 am – 4.00 pm',
                                                         'Friday' => '8.30 am – 4.00 pm',
                                                         'Saturday' => '8.30 am – 4.00 pm',
                                                         'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Sheffield',
                           street_address: 'Unit 1-2 Aberdeen Court, 97 Division Street, S1 4GE Sheffield',
                           latitude: 53.379402213,
                           longitude: -1.47609472275,
                           business_id: steam_yard.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: steam_yard.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: steam_yard.id)
end
unless steam_yard.image.attached?
  steam_yard.image.attach(io: File.open('files/steam_yard.jpeg'), filename: 'steam_yard')
end

####### Tamper Coffee
tamper_coffee = Business.find_or_create_by(name: 'Tamper Coffee',
                                           business_type: 0,
                                           description: Faker::Lorem.paragraph(sentence_count: 12),
                                           opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                            'Tuesday' => '8.30 am – 4.00 pm',
                                                            'Wednesday' => '8.30 am – 4.00 pm',
                                                            'Thursday' => '8.30 am – 4.00 pm',
                                                            'Friday' => '8.30 am – 4.00 pm',
                                                            'Saturday' => '8.30 am – 4.00 pm',
                                                            'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Sheffield',
                           street_address: '149 Arundel Street, S1 2NU Sheffield',
                           latitude: 53.3773987037,
                           longitude: -1.46752603979,
                           business_id: tamper_coffee.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: tamper_coffee.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: tamper_coffee.id)
end
unless tamper_coffee.image.attached?
  tamper_coffee.image.attach(io: File.open('files/tamper_coffee.jpeg'), filename: 'tamper_coffee')
end

####### Lucky Fox
lucky_fox = Business.find_or_create_by(name: 'Lucky Fox',
                                       business_type: 1,
                                       description: Faker::Lorem.paragraph(sentence_count: 12),
                                       opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                        'Tuesday' => '8.30 am – 4.00 pm',
                                                        'Wednesday' => '8.30 am – 4.00 pm',
                                                        'Thursday' => '8.30 am – 4.00 pm',
                                                        'Friday' => '8.30 am – 4.00 pm',
                                                        'Saturday' => '8.30 am – 4.00 pm',
                                                        'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Sheffield',
                           street_address: '72 Division St, Sheffield City Centre, Sheffield S1 4GF',
                           latitude: 53.379812,
                           longitude: -1.475938,
                           business_id: lucky_fox.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: lucky_fox.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: lucky_fox.id)
end
lucky_fox.image.attach(io: File.open('files/lucky_fox.jpeg'), filename: 'lucky_fox') unless lucky_fox.image.attached?

####### Marmadukes
marmadukes = Business.find_or_create_by(name: 'Marmadukes',
                                        business_type: 0,
                                        description: Faker::Lorem.paragraph(sentence_count: 12),
                                        opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                         'Tuesday' => '8.30 am – 4.00 pm',
                                                         'Wednesday' => '8.30 am – 4.00 pm',
                                                         'Thursday' => '8.30 am – 4.00 pm',
                                                         'Friday' => '8.30 am – 4.00 pm',
                                                         'Saturday' => '8.30 am – 4.00 pm',
                                                         'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Sheffield',
                           street_address: '22 Norfolk Row, Sheffield City Centre, Sheffield S1 2PA',
                           latitude: 53.381062,
                           longitude: -1.468187,
                           business_id: marmadukes.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: marmadukes.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: marmadukes.id)
end
unless marmadukes.image.attached?
  marmadukes.image.attach(io: File.open('files/marmadukes.jpeg'), filename: 'marmadukes')
end

# Create Businesses in Newcastle

####### Olive & Bean
olive_and_bean = Business.find_or_create_by(name: 'Olive & Bean',
                                            business_type: 0,
                                            description: Faker::Lorem.paragraph(sentence_count: 20),
                                            opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                             'Tuesday' => '8.30 am – 4.00 pm',
                                                             'Wednesday' => '8.30 am – 4.00 pm',
                                                             'Thursday' => '8.30 am – 4.00 pm',
                                                             'Friday' => '8.30 am – 4.00 pm',
                                                             'Saturday' => '8.30 am – 4.00 pm',
                                                             'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Newcastle Upon Tyne',
                           street_address: '17 /19 Clayton Street, NE1 5PN Newcastle upon Tyne',
                           latitude: 54.9731987597,
                           longitude: -1.61549762974,
                           business_id: olive_and_bean.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: olive_and_bean.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: olive_and_bean.id)
end
unless olive_and_bean.image.attached?
  olive_and_bean.image.attach(io: File.open('files/olive_and_bean.jpeg'), filename: 'olive_and_bean')
end

####### The Dispensary
the_dispensary = Business.find_or_create_by(name: 'The Dispensary',
                                            business_type: 0,
                                            description: Faker::Lorem.paragraph(sentence_count: 12),
                                            opening_times: { 'Monday' => '8.30 am – 4.00 pm',
                                                             'Tuesday' => '8.30 am – 4.00 pm',
                                                             'Wednesday' => '8.30 am – 4.00 pm',
                                                             'Thursday' => '8.30 am – 4.00 pm',
                                                             'Friday' => '8.30 am – 4.00 pm',
                                                             'Saturday' => '8.30 am – 4.00 pm',
                                                             'Sunday' => 'Closed' })
Location.find_or_create_by(city: 'Newcastle Upon Tyne',
                           street_address: 'Heber St, NE4 5TN Newcastle upon Tyne',
                           latitude: 54.973813, longitude: -1.622812,
                           business_id: the_dispensary.id)
50.times do
  Review.create(score: Faker::Number.between(from: 0, to: 1),
                description: Faker::Restaurant.review,
                business_id: the_dispensary.id)
end
100.times do
  Review.create(score: 0,
                description: Faker::Restaurant.review,
                business_id: the_dispensary.id)
end
unless the_dispensary.image.attached?
  the_dispensary.image.attach(io: File.open('files/the_dispensary.jpeg'), filename: 'the_dispensary')
end
