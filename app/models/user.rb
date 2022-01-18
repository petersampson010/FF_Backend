class User < ApplicationRecord
    has_secure_password

    has_many :records

    has_many :user_gameweek_joiners
    has_many :gameweeks, through: :user_gameweek_joiners

    has_one :admin_user
end
