class AddUsersToSchema < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :user_id, :bigint
    add_foreign_key :lists, :users
    add_column :bookmarks, :user_id, :bigint
    add_foreign_key :bookmarks, :users
    add_column :movies, :user_id, :bigint
    add_foreign_key :movies, :users
  end
end
