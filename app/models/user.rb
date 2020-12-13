class User < ApplicationRecord

    has_many :player_user_joiners
    has_many :players, through: :player_user_joiners
    has_many :player_gameweek_joiners, through: :players

    has_many :user_gameweek_joiners
    has_many :gameweeks, through: :user_gameweek_joiners

    has_one :admin_user
end
