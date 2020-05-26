class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms, id: :uuid, default: "gen_random_uuid()" do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
