class CreateUserGameweekJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :user_gameweek_joiners, id: false do |t|
      t.integer :ug_id, primary_key: true
      t.integer :total_points
      t.references :user, null: false, foreign_key: true
      t.references :gameweek, null: false, foreign_key: true

      t.timestamps
    end
  end
end
