class AddAuthenticationTokenToAdminUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :authentication_token, :string, limit: 30
    add_index :admin_users, :authentication_token, unique: true
  end
end
