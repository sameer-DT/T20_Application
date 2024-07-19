class AddFieldsToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :role, :string
    add_column :players, :is_captain, :boolean
    add_column :players, :is_active, :boolean
    add_column :players, :description, :text
  end
end
