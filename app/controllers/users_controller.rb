class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = User.all
    @indexuser = current_user
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
    redirect_to user_path
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
