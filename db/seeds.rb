# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
List.destroy_all
Movie.destroy_all
MovieList.destroy_all
UserMovie.destroy_all

user_seed = [
	{email: "test1@gmail.com", password:"password", name:"John Doe", zip:"90210"},
	{email: "test2@gmail.com", password:"password", name:"James Doe", zip:"90210"},
	{email: "test3@gmail.com", password:"password", name:"Joe Doe", zip:"90210"},
	{email: "test4@gmail.com", password:"password", name:"Jerry Doe", zip:"90210"},
	{email: "test5@gmail.com", password:"password", name:"Juan Doe", zip:"90210"}
]

list_seed = [
	{name: "test1@gmail.com", type:"password", user_id:"John Doe"},
	{email: "test2@gmail.com", password:"password", name:"James Doe", zip:"90210"},
	{email: "test3@gmail.com", password:"password", name:"Joe Doe", zip:"90210"},
	{email: "test4@gmail.com", password:"password", name:"Jerry Doe", zip:"90210"},
	{email: "test5@gmail.com", password:"password", name:"Juan Doe", zip:"90210"}
]

movies_seed = [
	{email: "test1@gmail.com", password:"password", name:"John Doe", zip:"90210"},
	{email: "test2@gmail.com", password:"password", name:"James Doe", zip:"90210"},
	{email: "test3@gmail.com", password:"password", name:"Joe Doe", zip:"90210"},
	{email: "test4@gmail.com", password:"password", name:"Jerry Doe", zip:"90210"},
	{email: "test5@gmail.com", password:"password", name:"Juan Doe", zip:"90210"}
]

User.create(user_seed)
