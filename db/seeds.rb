# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

['Dallas Stars', 'Chicago Blackhawks', 'LA Kings', 'Colorado Avalnache', 'Boston Bruins', 'Toronto Maple Leafs', 'Carolina Hurricanes'].each do |name|
  Team.create(name: name)
end

100.times do
  Player.create(name: Faker::Name.name, team: Team.find(Team.pluck(:id).sample), seasons: rand(25))
end