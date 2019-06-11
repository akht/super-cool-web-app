class RemoveUrlFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :url, :string
  end
end
