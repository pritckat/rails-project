class AddDefaultToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :default, :boolean
  end
end
