class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
    @newbook = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user = User.update(user_params)
    redirect_to user_path(user.id)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
