class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :image_name, :string
  end
end
