# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    score       { Faker::Number.between(from: 0, to: 1) }
    description { Faker::TvShows::BigBangTheory.quote }
    business
  end
end
