# frozen_string_literal: true

class Business < ApplicationRecord
  has_one :location, dependent: :destroy

  enum business_type: { cafe: 0, restaurant: 1 }
end
