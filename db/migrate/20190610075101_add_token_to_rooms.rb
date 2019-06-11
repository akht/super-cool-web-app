class AddTokenToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :token, :string
  end
end
