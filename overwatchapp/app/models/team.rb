class Team < ApplicationRecord
    has_many :team_compositions
    has_many :memberships
    has_many :users, through: :memberships
end
