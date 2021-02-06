# frozen_string_literal: true

class CreateLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :street_address
      t.float :longitude
      t.float :latitude
      t.integer :business_id

      t.timestamps
    end
  end
end
