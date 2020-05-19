class CreateGameweekAdminUserJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :gameweek_admin_user_joiners, id: false do |t|
      t.integer :gau_id, primary_key: true
      t.boolean :information_finalised
      t.references :gameweek_id, null: false, foreign_key: true
      t.references :admin_user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
