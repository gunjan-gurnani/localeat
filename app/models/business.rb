class Business < ApplicationRecord
  has_one :location

  enum business_type: [:cafe, :restaurant]
end
