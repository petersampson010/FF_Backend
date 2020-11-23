class CreateGameweeks < ActiveRecord::Migration[6.0]
  def change
    create_table :gameweeks, id: false do |t|
      t.integer :gameweek_id, primary_key: true
      t.string :opponent, null: false
      t.boolean :complete, null: false

      t.timestamps
    end
  end
end
