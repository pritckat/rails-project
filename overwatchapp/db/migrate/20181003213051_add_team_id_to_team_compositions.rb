class AddTeamIdToTeamCompositions < ActiveRecord::Migration[5.2]
  def change
    add_column :team_compositions, :team_id, :integer
  end
end
