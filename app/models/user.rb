class User < ApplicationRecord

	# ONE to MANY: User > List
	has_many :lists

	# JOIN: User < Movies
	has_many :user_movies
	has_many :movies, :through => :user_movies


  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise	:database_authenticatable, 
  			:registerable,
        	:recoverable,
        	:rememberable, 
        	:trackable, 
        	:validatable
end
