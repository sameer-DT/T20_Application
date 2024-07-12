class AddAgeAndPositionToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :age, :integer
    add_column :players, :position, :string
  end
end
