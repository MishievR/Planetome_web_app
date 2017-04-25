class AddTagLineToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :tag_line, :text
  end
end
