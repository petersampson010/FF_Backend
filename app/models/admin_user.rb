class AdminUser < ApplicationRecord

    has_many :users

    has_many :players

    has_many :gameweeks
    
end
