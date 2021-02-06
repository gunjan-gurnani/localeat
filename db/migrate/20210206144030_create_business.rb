class CreateBusiness < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :business_type
      t.string :description
    end
  end
end
