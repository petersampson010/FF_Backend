class AdminUser < ApplicationRecord

    has_many :users
    has_many :gameweek_admin_user_joiners
    has_many :gameweeks, through: :gameweek_admin_user_joiners
    
end
