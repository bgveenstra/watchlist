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

#################
## USERS & MOVIES
#################

# CREATE USERS

user1 = User.create({email: "test1@gmail.com", password:"password", name:"John Doe", zip:"90210"})
user2 = User.create({email: "test2@gmail.com", password:"password", name:"James Doe", zip:"90210"})
user3 = User.create({email: "test5@gmail.com", password:"password", name:"Juan Doe", zip:"90210"})

# CREATE MOVIES

movie1 = Movie.create({title: "The Italian Job", director:"Felix Gary Gray", synopsis:"Comic caper movie about a plan to steal a gold shipment from the streets of Turin by creating a traffic jam.", year:1969, runtime:90, rating:5})
movie2 = Movie.create({title: "Sneakers", director:"Phil Alden Robinson", synopsis:"A security pro finds his past coming back to haunt him, when he and his unique team are tasked with retrieving a particularly important item.", year:1969, runtime:90, rating:5})
movie3 = Movie.create({title: "Hackers", director:"Iain Softley", synopsis:"This movie is about hackers who are blamed for making a virus that will capsize 5 oil tankers.", year:1969, runtime:90, rating:5})
movie4 = Movie.create({title: "The Net", director:"Irwin Winkler", synopsis:"A computer programmer stumbles upon a conspiracy, putting her life and the lives of those around her in great danger.", year:1969, runtime:90, rating:5})
movie5 = Movie.create({title: "Swordfish", director:"Dominic Sena", synopsis:"A covert counter-terrorist unit called Black Cell led by Gabriel Shear wants the money to help finance their war against international terrorism, but it's all locked away. Gabriel brings in convicted hacker Stanley Jobson to help him.", year:1969, runtime:90, rating:5})

# JOIN USERS AND MOVIES

user_movie_join = [

	{user_id: user1.id, movie_id: movie1.id},
	{user_id: user1.id, movie_id: movie2.id},
	{user_id: user1.id, movie_id: movie3.id}, 
	{user_id: user1.id, movie_id: movie4.id},
	{user_id: user1.id, movie_id: movie5.id},
	{user_id: user2.id, movie_id: movie1.id},
	{user_id: user2.id, movie_id: movie2.id},
	{user_id: user2.id, movie_id: movie3.id},
	{user_id: user3.id, movie_id: movie4.id},
	{user_id: user3.id, movie_id: movie5.id}

]

UserMovie.create(user_movie_join)


################
## USERS & LISTS
################

# CREATE LISTS

list1 = List.create(name: "Favourites", user_id: user1.id)
list2 = List.create(name: "Animated Films", user_id: user1.id)
list3 = List.create(name: "Film Noir", user_id: user1.id)
list4 = List.create(name: "90s Nostalgia", user_id: user2.id)
list5 = List.create(name: "Recommended By Will", user_id: user3.id)

#################
## LISTS & MOVIES
#################

movie_list_join = [

	# USER 1, LIST 1
	{list_id: list1.id, movie_id: movie1.id},
	{list_id: list1.id, movie_id: movie2.id},
	{list_id: list1.id, movie_id: movie3.id}, 
	{list_id: list1.id, movie_id: movie4.id},
	{list_id: list1.id, movie_id: movie5.id},

	# USER 1, LIST 2
	{list_id: list2.id, movie_id: movie2.id},
	{list_id: list2.id, movie_id: movie3.id}, 
	{list_id: list2.id, movie_id: movie4.id},

	# USER 1, LIST 3
	{list_id: list3.id, movie_id: movie5.id},
	{list_id: list3.id, movie_id: movie1.id},
	{list_id: list3.id, movie_id: movie2.id},

	# USER 2, LIST 1
	{list_id: list4.id, movie_id: movie3.id},
	{list_id: list4.id, movie_id: movie4.id},

	# USER 3, LIST 1
	{list_id: list5.id, movie_id: movie1.id},
	{list_id: list5.id, movie_id: movie2.id},
	{list_id: list5.id, movie_id: movie3.id}, 
	{list_id: list5.id, movie_id: movie4.id},
	{list_id: list5.id, movie_id: movie5.id}

]

MovieList.create(movie_list_join)
