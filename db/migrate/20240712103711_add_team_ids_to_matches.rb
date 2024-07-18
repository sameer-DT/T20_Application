class AddTeamIdsToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :team1_id, :integer
    add_column :matches, :team2_id, :integer
  end
end
