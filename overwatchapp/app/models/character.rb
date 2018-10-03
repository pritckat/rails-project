class Character < ApplicationRecord
    has_many :team_composition_characters
    has_many :team_compositions, through: :team_composition_characters
end
