module Cricket
    class Player
      attr_accessor :name, :runs, :wickets
  
      def initialize(name)
        @name = name
        @runs = 0
        @wickets = 0
      end
  
      def add_runs(runs)
        @runs += runs
      end
  
      def add_wicket
        @wickets += 1
      end
  
      def statistics
        {
          name: @name,
          runs: @runs,
          wickets: @wickets
        }
      end
    end
  
    class Team
      attr_accessor :players
  
      def initialize(max_players = 15)
        @players = []
        @max_players = max_players
      end
  
      def add_player(player)
        if @players.length < @max_players
          @players.push(player)
        else
          puts "Team is full"
        end
      end
  
      def remove_player(player)
        @players.delete(player)
      end
  
      def statistics
        @players.map { |player| player.statistics }
      end
    end
  end
  
  team = Cricket::Team.new
  15.times { |i| team.add_player(Cricket::Player.new("Player#{i + 1}")) }
  puts team.players.map { |player| "#{player.name} scored #{player.runs} runs and taken #{player.wickets} wickets" }
  