class AddCompanionsToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :companions, :integer, default: 1
  end
end
