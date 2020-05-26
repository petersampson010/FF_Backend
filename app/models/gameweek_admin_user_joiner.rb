class GameweekAdminUserJoiner < ApplicationRecord

    belongs_to :gameweek 
    belongs_to :admin_user
end
