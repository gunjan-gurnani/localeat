# frozen_string_literal: true

class AddOpeningTimesToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :opening_times, :string
  end
end
