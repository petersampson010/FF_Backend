class CreatePlayerUserJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :player_user_joiners, id: false do |t|
      t.integer :pu_id, primary_key: true
      t.boolean :sub
      t.string :availability
      t.boolean :captain
      t.boolean :vice_captain
      t.references :player, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
