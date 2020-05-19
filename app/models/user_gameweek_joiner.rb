class UserGameweekJoiner < ApplicationRecord
  belongs_to :user_id
  belongs_to :gameweek_id
end
