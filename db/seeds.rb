# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.delete_all
Role.create([ 
  {id: 1, title: "admin"},
  {id: 2, title: "client"}
])
puts "Стандартные роли:"
puts Role.all.map(&:title)

User.delete_all
User.create([ 
  {id: 1, email: "admin", password: "admin", password_confirmation: "admin", role_id: 1}
])
puts "Стандартные аккаунты:"
puts User.all.map(&:email)
