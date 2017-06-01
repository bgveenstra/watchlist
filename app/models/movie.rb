class Movie < ApplicationRecord

	# JOIN: List < Movies
	has_many :movie_lists
	has_many :lists, :through => :movie_list

	# JOIN: User < Movies
	has_many :user_movies
	has_many :users, :through => :user_movies

end
