class CreateMarathons < ActiveRecord::Migration
  def change
    create_table :marathons do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :date_description
      t.integer :month
      t.integer :year
      t.integer :day
      t.string :kind
      t.float :latitude
      t.float :longitude
      t.date :event_date
      t.string :part_of_the_world

      t.timestamps
    end
  end
end
