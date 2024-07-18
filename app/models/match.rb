require 'csv'
class Match < ApplicationRecord
    belongs_to :team1, class_name: 'Team', foreign_key: 'team1_id'
    belongs_to :team2, class_name: 'Team', foreign_key: 'team2_id'
  
    def self.populate
      CSV.foreach("db/matches.csv", headers: true) do |row|
        match = Match.new
        match.date = row["date"]
        match.location = row["location"]
        match.score_team1 = row["score_team1"]
        match.score_team2 = row["score_team2"]
        match.team1_id = row["team1_id"]
        match.team2_id = row["team2_id"]
        match.save!
    end
  end
end
Match.populate