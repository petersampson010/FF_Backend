class CreatePlayerUserJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :player_user_joiners, id: false do |t|
      t.integer :pu_id, primary_key: true
      t.boolean :sub, null: false
      t.boolean :captain, null: false
      t.boolean :vice_captain, null: false
      t.integer :player_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
