require 'csv'
csv_text = File.read('/db/seeds_data/marathon_list_oct_21_15.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Marathon.create!(row.to_hash)
end