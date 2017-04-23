class AddPriceTimeToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :price_time, :string
  end
end
