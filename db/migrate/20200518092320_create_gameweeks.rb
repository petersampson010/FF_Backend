class CreateGameweeks < ActiveRecord::Migration[6.0]
  def change
    create_table :gameweeks, id: false do |t|
      t.integer :gameweek_id, primary_key: true
      t.boolean :game_played

      t.timestamps
    end
  end
end
