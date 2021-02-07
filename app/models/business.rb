# frozen_string_literal: true

class Business < ApplicationRecord
  has_one :location, dependent: :destroy
  serialize :opening_times, Hash

  enum business_type: { cafe: 0, restaurant: 1 }
end
