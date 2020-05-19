class User < ApplicationRecord

    has_many :player_user_joiners
    has_many :players, through: :player_user_joiners

    has_many :user_gameweek_joiners
    has_many :gameweeks, through: :user_gameweek_joiners

    belongs_to :admin_user
end
