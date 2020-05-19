class PlayerGameweekJoiner < ApplicationRecord
  belongs_to :player_id
  belongs_to :gameweek_id
end
