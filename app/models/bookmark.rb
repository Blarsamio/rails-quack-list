class Bookmark < ApplicationRecord
  validates :comment, presence: true
  belongs_to :movie
  belongs_to :list
  # validates :movie_id
end
