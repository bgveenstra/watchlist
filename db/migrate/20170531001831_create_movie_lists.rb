class CreateMovieLists < ActiveRecord::Migration[5.1]
  def change
    create_table :movie_lists do |t|

    	t.belongs_to :movie
    	t.belongs_to :list

      t.timestamps
    end
  end
end
