class CreateUserMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_movies do |t|

    	t.belongs_to :user
    	t.belongs_to :movie
    	t.integer :my_rating

      t.timestamps
    end
  end
end
