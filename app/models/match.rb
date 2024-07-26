require 'csv'
class Match < ApplicationRecord

    validates :date, presence: true
    validates :location, presence: true
    validates :team1_id, presence: true
    validates :team2_id, presence: true

    belongs_to :team1, class_name: 'Team'
    belongs_to :team2, class_name: 'Team'

    has_many :teams, through: :players


    scope :upcoming, -> {
      where('match_date > ?', Date.current)
    }

    scope :within_date_range, ->(start_date,end_date){
      where("date BETWEEN ? AND ?", start_date, end_date)
    }

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