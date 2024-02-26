class AddDetailsToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :genre, :string
    add_column :movies, :original_language, :string
    add_column :movies, :release_date, :string
    add_column :movies, :popularity, :float
    add_column :movies, :tagline, :string
  end
end
