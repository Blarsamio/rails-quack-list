class ListsController < ApplicationController
  before_action :set_list, only: :show
  before_action :set_user, only: :index

  def index
    @lists = @user.lists
  end

  def show
    @movie = Movie.new
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end

  def set_list
    @list = List.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
