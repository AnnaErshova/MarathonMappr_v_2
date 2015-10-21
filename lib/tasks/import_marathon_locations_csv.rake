require 'csv'
namespace :import_marathon_locations_csv do
  task :create_locations => :environment do
    csv_text = File.read('/Users/annaershova/Desktop/Mapper/db/seeds_data/marathon_list_oct_21_15.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Marathon.create!(row.to_hash)
    end
  end
end 