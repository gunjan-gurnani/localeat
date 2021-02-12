# frozen_string_literal: true

class Location < ApplicationRecord
  belongs_to :business

  validates :city, presence: true
end
