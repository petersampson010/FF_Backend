class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.integer :user_id, primary_key: true
      t.string :email, unique: true
      t.string :team_name, null: false
      t.string :password_digest, null: false
      t.integer :transfers
      t.float :budget
      t.integer :gw_start
      t.integer :admin_user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
