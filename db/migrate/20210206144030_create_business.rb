class CreateBusiness < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :business_type
      t.string :description
    end
  end
end
