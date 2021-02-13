# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :business

  enum score: { like: 0, dislike: 1 }
end
