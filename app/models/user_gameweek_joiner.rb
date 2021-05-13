class UserGameweekJoiner < ApplicationRecord
  belongs_to :user
  belongs_to :gameweek

  has_many :players
end
