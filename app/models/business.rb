# frozen_string_literal: true

class Business < ApplicationRecord
  has_many_attached :image
  has_one :location, dependent: :destroy
  serialize :opening_times, Hash

  enum business_type: { cafe: 0, restaurant: 1 }

  validates :name, presence: true

  attr_accessor :city, :street_address

  BUSINESS_TYPES = [
    ['Cafe', 0],
    ['Restaurant', 1]
  ].freeze
end
