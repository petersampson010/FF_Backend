class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.integer :user_id, primary_key: true
      t.string :username, unique: true
      t.string :teamname, null: false
      t.string :password, null: false
      t.integer :transfers, null: false
      t.integer :admin_user_id, null: false

      t.timestamps
    end
  end
end
