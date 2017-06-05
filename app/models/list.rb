class List < ApplicationRecord

	validates :name, presence: true, length: { minimum: 2, maximum: 20 }

	# ONE to MANY: User > List
	belongs_to :user, optional: true

	# JOIN: List < Movies
	has_many :movie_lists
	has_many :movies, :through => :movie_lists

end
