class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.integer :user_id, primary_key: true
      t.string :username
      t.string :teamname
      t.string :password
      t.integer :transfers

      t.timestamps
    end
  end
end
