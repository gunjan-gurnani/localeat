class AddOpeningTimesToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :business, :opening_times, :string
  end
end
