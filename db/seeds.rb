# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(username: "dummy1", password: "123") 
User.find_or_create_by(username: "dummy2", password: "456") 
User.find_or_create_by(username: "dummy3", password: "789") 

Game.find_or_create_by(title: "Dota 2", categories: "")
Game.find_or_create_by(title: "Frost Punk", categories: "")
Game.find_or_create_by(title: "Company of Heroes 2", categories: "")
Game.find_or_create_by(title: "Don't starve", categories: "")
Game.find_or_create_by(title: "Total War: Three Kingdoms", categories: "")