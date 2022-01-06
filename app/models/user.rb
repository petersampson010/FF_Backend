class User < ApplicationRecord

    acts_as_token_authenticatable


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    belongs_to :admin_user

    has_many :records 

    has_many :user_gameweek_joiners
end
