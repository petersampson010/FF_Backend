class Gameweek < ApplicationRecord

    has_many :player_gameweek_joiners
    has_many :players, through: :player_gameweek_joiners 

    has_many :user_gameweek_joiners

    has_one :admin_user
    
end
