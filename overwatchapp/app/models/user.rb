class User < ApplicationRecord
    has_many :user_teams
    has_many :teams, through: :user_teams
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true

end
