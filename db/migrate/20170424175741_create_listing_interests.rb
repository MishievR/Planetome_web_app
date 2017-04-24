class CreateListingInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :listing_interests do |t|
      t.integer :listing_id
      t.integer :interest_id
    end
  end
end
