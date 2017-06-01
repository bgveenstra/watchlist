class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|

    	t.string :name
    	t.belongs_to :user

    	t.timestamps
    end
  end
end
