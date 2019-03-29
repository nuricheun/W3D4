# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all

users = User.create!([{username:'nuri'}, {username:'raphael'}, {username:'matt'}, {username:'dean'}, {username:'liz'}])
polls = Poll.create!([{title: 'spinach', author_id: User.first.id}, {title: 'cucumber', author_id: User.all[3].id}, {title: 'yogurt', author_id:User.all[4].id}, {title: 'meat', author_id:User.all[2].id}])
questions = Question.