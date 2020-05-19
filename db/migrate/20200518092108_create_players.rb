class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players, id: false do |t|
      t.integer :player_id, primary_key: true
      t.string :name
      t.string :position
      t.float :price

      t.timestamps
    end
  end
end
