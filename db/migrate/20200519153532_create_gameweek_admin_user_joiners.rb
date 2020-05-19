class CreateGameweekAdminUserJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :gameweek_admin_user_joiners do |t|
      t.boolean :info_finalised
      t.references :gameweek, null: false, foreign_key: true
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
