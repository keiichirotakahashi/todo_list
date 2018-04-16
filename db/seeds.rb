# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

if File.exist?('db/sample_data.csv') == true
  CSV.foreach('db/sample_data.csv').each do |row|
    Task.find_or_create_by(:id => row[0], :name => row[1], :status => row[2],
    	        :due_date => row[3], :created_at => row[4], :updated_at => row[5])
  end
end