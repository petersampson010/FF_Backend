class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users, id: false do |t|
      t.integer :admin_user_id, primary_key: true 
      t.string :email, unique: true, null: false
      t.string :password, null: false
      t.string :club_name, unique: true, null: false

      t.timestamps
    end
  end
end
