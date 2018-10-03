class TeamComposition < ApplicationRecord
    belongs_to :team
    has_many :team_composition_characters
    has_many :characters, through: :team_composition_characters
end
