class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|

      ## Movie info
      t.string  :title
      t.string  :director
      t.string  :synopsis
      t.string  :image
      t.integer :list_id
      t.integer  :year
      t.integer  :runtime
      t.integer  :rating

      t.timestamps
    end
  end
end
