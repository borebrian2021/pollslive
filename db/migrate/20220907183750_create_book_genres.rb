class CreateBookGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :book_genres do |t|
      t.string :book_id
      t.string :genre_id
    end
  end
end
