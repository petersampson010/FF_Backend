class GameweekAdminUserJoiner < ApplicationRecord

    belongs_to :admin_user
    belongs_to :gameweek 
end
