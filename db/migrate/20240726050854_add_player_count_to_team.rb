class AddPlayerCountToTeam < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :player_count, :integer, default: 0, null: false
  end
end
