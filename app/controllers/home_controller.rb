class HomeController < ApplicationController
  def index
    @lists = List.all
  end

  def fotd
    @movie = Movie.find(rand(1..Movie.count))
  end

  # def search
  #   @movies = Movie.where('title LIKE ?', "%#{params[:search]}%")
  # end

  # def favorite_movies
  #   @movies = Movie.where(favorite: true)
  # end
end
