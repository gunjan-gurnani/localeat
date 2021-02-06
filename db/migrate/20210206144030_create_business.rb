# frozen_string_literal: true

class CreateBusiness < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :business_type
      t.string :description

      t.timestamps
    end
  end
end
