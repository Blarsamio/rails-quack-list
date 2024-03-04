class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  has_many :lists
  has_many :favorites
  has_many :users, through: :favorites
end
