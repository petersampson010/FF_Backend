class CreatePlayerGameweekJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :player_gameweek_joiners, id: false do |t|
      t.integer :pg_id, primary_key: true
      t.integer :minutes
      t.integer :assists
      t.integer :goals
      t.integer :own_goals
      t.integer :y_cards
      t.integer :r_cards
      t.integer :bonus
      t.integer :penalty_miss
      t.integer :goals_conceded
      t.references :player_id, null: false, foreign_key: true
      t.references :gameweek_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
