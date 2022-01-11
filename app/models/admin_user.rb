class AdminUser < ApplicationRecord

    # has_many :users
    # has_many :user_gameweek_joiners, through: :users

    has_many :players

    has_many :gameweeks

end
