class CreateTeamCompositions < ActiveRecord::Migration[5.2]
  def change
    create_table :team_compositions do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
