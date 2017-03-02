class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.date :release_date
      t.string :director
      t.string :poster_url

      t.timestamps
    end
  end
end
