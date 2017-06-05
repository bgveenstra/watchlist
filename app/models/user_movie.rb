class UserMovie < ApplicationRecord

	# JOIN TABLE
	belongs_to :user, optional: true # foreign_key is user_id
	belongs_to :movie, optional: true # foreign_key is movie_id

end
