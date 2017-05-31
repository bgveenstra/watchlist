class Movie < ApplicationRecord

	has_many :lists, through: :movie_list
	has_many :users, through: :user_movie

end
