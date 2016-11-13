class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      t.timestamps null: false
    end
  end
  
  def down
    drop_table 'movies'
  end
end
