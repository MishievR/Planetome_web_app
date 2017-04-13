class AddAdditionalinfoToUser < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :first_name, :string
      add_column :users, :last_name, :string
      add_column :users, :age, :integer
      add_column :users, :type, :integer
      add_column :users, :location_town, :string
      add_column :users, :inerest_main, :string
      add_column :users, :about, :text
  end
end
