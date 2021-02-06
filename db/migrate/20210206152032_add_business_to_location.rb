class AddBusinesstoLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :business_id, :integer
  end
end
