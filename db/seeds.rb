# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.find_or_create_by(title: "Dota 2", genre: "g1")
Game.find_or_create_by(title: "Frost Punk", genre: "g2")
Game.find_or_create_by(title: "Company of Heroes 2", genre: "g3")
Game.find_or_create_by(title: "Don't starve", genre: "g4")
Game.find_or_create_by(title: "Total War: Three Kingdoms", genre: "g5")