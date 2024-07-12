require 'csv'
class Match < ApplicationRecord
  belongs_to :team1, class_name: 'Team'
  belongs_to :team2, class_name: 'Team'
    def self.import_csv(matches)
      CSV.foreach(matches.csv, headers: true) do |row|
        match = Match.new
        match.score_team1 = row["score_team1"]
        match.score_team2 = row["score_team2"]
        match.date = Date.parse(row["date"])
        match.location = row["location"]
        match.save!
    end
  end
end
