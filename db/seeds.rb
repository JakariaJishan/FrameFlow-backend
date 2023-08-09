# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(username:"jack")
User.create(username:"marcelo")
User.create(username:"joe")

group1 = Group.create(name:"Jishan")
Group.create(name:"Alarcon")

Member.create(user_id: user1.id, group_id: group1.id)

