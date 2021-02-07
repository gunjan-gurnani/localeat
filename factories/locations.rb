# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    city            { Faker::Address.city }
    street_address { Faker::Address.full_address }
    longitude       { Faker::Address.latitude }
    latitude        { Faker::Address.longitude }
    business
  end
end
