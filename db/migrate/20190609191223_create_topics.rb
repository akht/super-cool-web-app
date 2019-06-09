class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
