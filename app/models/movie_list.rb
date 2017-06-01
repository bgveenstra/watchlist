class MovieList < ApplicationRecord

	# JOIN TABLE
	belongs_to :movie # foreign_key is movie_id
	belongs_to :list # foreign_key is list_id
	
end
