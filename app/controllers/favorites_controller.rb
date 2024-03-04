class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites
  end

  def show
    @movies = @favorite.movies
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to user_favorite_path(current_user), notice: 'Favorite was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:movie_id)
  end
end
