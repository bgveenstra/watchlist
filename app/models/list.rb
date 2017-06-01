class List < ApplicationRecord

	# ONE to MANY: User > List
	belongs_to :user

	# JOIN: List < Movies
	has_many :movie_lists
	has_many :movies, :through => :movie_lists

end
