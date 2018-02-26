class AddNewPowerToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts,:power,:integer
  end
end
