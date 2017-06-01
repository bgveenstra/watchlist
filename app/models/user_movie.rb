class UserMovie < ApplicationRecord

	# JOIN TABLE
	belongs_to :user # foreign_key is user_id
	belongs_to :movie # foreign_key is movie_id

end
