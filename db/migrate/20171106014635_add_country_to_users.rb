class AddCountryToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image_name ,:string
    add_column :users, :country ,:string
    add_column :users, :introduction ,:text


  end
end
