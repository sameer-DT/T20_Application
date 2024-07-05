require 'csv'
def process_data()
    players=[]
    begin
      CSV.foreach("sample_cricket_stats.csv", headers: true) do |row|
        players << {
            name: row['Player name'],
            runs: row['Runs scored'].to_i,
            balls: row['Balls faced'].to_i,
            fours: row['number of fours'].to_i,
            sixes: row['number of sixes'].to_i
      }
    rescue=>e
        puts "Error processing row: #{e.message}"
    end 
    for i in players
        strike_rate=i[:runs]/i[:balls].to_f
        puts "Strike rate of #{i[:name]} is #{strike_rate}"
    end
end
end
process_data()