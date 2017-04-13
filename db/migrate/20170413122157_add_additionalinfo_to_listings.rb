class AddAdditionalinfoToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :listing_url, :string
    add_column :listings, :interest_main, :string
    add_column :listings, :rating, :integer
    add_column :listings, :price, :decimal
    add_column :listings, :smoke, :boolean
    add_column :listings, :pets, :boolean
    add_column :listings, :start_date, :datetime
    add_column :listings, :end_date, :datetime
    add_column :listings, :accomodate, :integer
    add_column :listings, :bedroom, :integer

  end
end
