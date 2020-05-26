class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics, id: :uuid, default: "gen_random_uuid()" do |t|
      t.string :name, null: false
      t.string :who, null: false
      t.references :room, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
