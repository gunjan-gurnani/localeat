class AddBusinessesToLocations < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :business, null: false, foreign_key: true
  end
end
