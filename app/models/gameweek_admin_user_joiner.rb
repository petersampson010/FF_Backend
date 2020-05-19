class GameweekAdminUserJoiner < ApplicationRecord
  belongs_to :gameweek_id
  belongs_to :admin_user_id
end
