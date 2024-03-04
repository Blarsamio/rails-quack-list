class List < ApplicationRecord
  belongs_to :user, optional: true
  has_many :movies
  validates :name, presence: true, uniqueness: true
  scope :favorite_list, -> { where(favorite_list: true) }
end
