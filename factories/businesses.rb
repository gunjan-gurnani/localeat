# frozen_string_literal: true

FactoryBot.define do
  factory :business do
    name          { Faker::Restaurant.name }
    business_type { Faker::Number.within(range: 0..1) }
    description   { Faker::Restaurant.description }
    opening_times do
      { 'Monday' => '8.30 am – 4.00 pm',
        'Tuesday' => '8.30 am – 4.00 pm',
        'Wednesday' => '8.30 am – 4.00 pm',
        'Thursday' => '8.30 am – 4.00 pm',
        'Friday' => '8.30 am – 4.00 pm',
        'Saturday' => '8.30 am – 4.00 pm',
        'Sunday' => 'Closed' }
    end
  end
end
