class User < ApplicationRecord
    has_many :memberships
    has_many :teams, through: :memberships
    has_secure_password
    validates :username, :password, :password_confirmation, presence: true
    validates :username, uniqueness: true

end
