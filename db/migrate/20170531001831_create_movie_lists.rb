class CreateMovieLists < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_lists do |t|

    	t.integer :movie_id
    	t.integer :list_id

      t.timestamps
    end
  end
end
