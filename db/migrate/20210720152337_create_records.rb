class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records, id: false do |t|
      t.integer :record_id, primary_key: true
      t.boolean :sub
      t.boolean :captain
      t.boolean :vice_captain
      t.integer :user_id
      t.integer :player_id
      t.integer :gameweek_id

      t.timestamps
    end
  end
end
