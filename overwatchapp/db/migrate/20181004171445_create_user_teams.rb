class CreateUserTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :user_teams do |t|

      t.timestamps
    end
  end
end
