class AdminUser < ApplicationRecord

    has_many :users

    has_many :user_gameweek_joiners, through: :users 

    has_many :player_user_joiners, through: :users 
    has_many :players, through: :player_user_joiners

    has_many :gameweek_admin_user_joiners 
end
