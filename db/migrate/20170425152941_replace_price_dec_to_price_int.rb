class ReplacePriceDecToPriceInt < ActiveRecord::Migration[5.0]
  def change
    change_column :listings, :price, :integer
  end
end
