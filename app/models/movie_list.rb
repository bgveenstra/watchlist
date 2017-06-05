class MovieList < ApplicationRecord

	# JOIN TABLE
	belongs_to :movie, optional: true # foreign_key is movie_id
	belongs_to :list, optional: true # foreign_key is list_id
	
end
