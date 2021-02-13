class CreateReview < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer  :score
      t.string  :description
      t.integer :business_id

      t.timestamps
    end
  end
end
