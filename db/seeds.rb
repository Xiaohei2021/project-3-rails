# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


games = [{title: "Dota 2", genre: "g1", platform: "Steam" },
{title: "Frost Punk", genre: "g2", platform: "Steam"},
{title: "Company of Heroes 2", genre: "g3", platform: "Steam" },
{title: "Don't starve", genre: "g4",platform: "Steam" },
{title: "Total War: Three Kingdoms", genre: "g5", platform: "Steam"},
{title: "Starcraft 2", genre: "g3", platform: "Battlenet"},
{title: "Heroes of the Storm", genre: "g1", platform: "Battlenet"},
{title: "Overwatch", genre: "g6", platform: "Battlenet"},
{title: "Warcraft 3", genre: "g3", platform: "Battlenet"}
]

games.each do |game|
    Game.create(game)
end