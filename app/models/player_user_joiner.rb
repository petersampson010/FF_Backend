class PlayerUserJoiner < ApplicationRecord
  belongs_to :player_id
  belongs_to :user_id
end
