# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "csv"
csv_data = File.read(Rails.root.join("lib","seeds","profile.csv"))
csv = CSV.parse(csv_data, headers: true,encoding: "ISO-8859-1")
arr = []
csv.each do |row|
  p1 = Profile.new
  arr << row
  p1.name = row['name']
  p1.age = row['age'].to_i
  p1.email = row['email']
  p1.save
end

puts "Total #{arr.length} record has been inserted into Profile table"