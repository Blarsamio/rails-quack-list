class AddRelationsToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_reference :favorites, :movie, foreign_key: true
    add_reference :favorites, :user, foreign_key: true
  end
end
