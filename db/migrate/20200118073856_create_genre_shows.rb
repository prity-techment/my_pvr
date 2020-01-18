class CreateGenreShows < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_shows do |t|
      t.references :show
      t.references :genre
      t.timestamps
    end
  end
end
