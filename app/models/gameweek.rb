class Gameweek < ApplicationRecord

    has_many :player_gameweek_joiners
    has_many :players, through: :player_gameweek_joiners 

    has_many :user_gameweek_joiners
    has_many :users, through: :user_gameweek_joiners

    has_many :gameweek_admin_user_joiners
    has_many :admin_users, through: :gameweek_admin_user_joiners
end
