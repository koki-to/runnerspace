class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order("created_at DESC")
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :image, :introduction)
  end
end
