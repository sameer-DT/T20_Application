require_relative 'config/environment'

# Retrieve all players of specific team

team_id=6
players=Player.where(team_id: team_id).pluck
puts players

puts "_________________________________________________________"

#Retrieve players older than a certain age.

age=25
players=Player.where("age > ?", age).pluck
puts players

puts "_________________________________________________________"

# List all players and their corresponding teams.

players=Player.all
players.each do |player|
  puts "#{player.name} - #{player.team.name}"
end

puts "_________________________________________________________"

# Insert a new player into a team.

new_player = Player.create!(name: 'John Doe', age: 28, team_id: 1)
puts "New player created: #{new_player.name}"

# puts "_________________________________________________________"

# Update a player's position.

player=Player.find(5)
player.update!(position: 'Goalkeeper')
puts "Player updated: #{player.name}"
puts "Player Position: #{player.position}"

# Delete a player

player=Player.find_by(name: 'John Doe')
player.destroy
puts "Player deleted: #{player.name}"

# Get the count of players in each team including teams without any
# players.

team_player_counts = Team.left_joins(:players).group(:id).count
puts "Team player counts: #{team_player_counts.inspect}"

puts "_________________________________________________________"


# Retrieve the average age of players in each team

team_average_ages = Team.includes(:players).group(:id).average(:age)
puts "Team average ages: #{team_average_ages.inspect}"

puts "_________________________________________________________"




