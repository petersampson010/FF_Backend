class AdminUser < ApplicationRecord

    acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :users
    has_many :user_gameweek_joiners, through: :users

    has_many :players

    has_many :gameweeks
end
