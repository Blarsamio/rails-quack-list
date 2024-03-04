class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lists, dependent: :destroy
  has_many :movies, through: :lists
  has_many :favorites, dependent: :destroy
  has_many :movies, through: :favorites
  has_one :favorite_list, -> { where(favorite_list: true) }, class_name: 'List'
end
