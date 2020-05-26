class CreateGameweekAdminUserJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :gameweek_admin_user_joiners, id: false do |t|
      t.integer :gau_id, primary_key: true
      t.integer :gameweek_id, null: false
      t.integer :admin_user_id, null: false
      t.boolean :info_finalised


      t.timestamps
    end
  end
end
