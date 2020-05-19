class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users, id: false do |t|
      t.integer :admin_user_id, primary_key: true 
      t.string :username
      t.string :password
      t.string :club_name

      t.timestamps
    end
  end
end
