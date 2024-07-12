class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id  
      t.timestamps
    end
    add_foreign_key :players, :teams
  end
end