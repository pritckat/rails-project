class CreateTeamCompositionCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :team_composition_characters do |t|
      t.integer :team_composition_id
      t.integer :character_id
      t.timestamps
    end
  end
end
