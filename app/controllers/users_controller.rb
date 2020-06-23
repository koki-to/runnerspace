class UsersController < ApplicationController

  def index
    @user = User.find(current_user.id)
    users = User.includes(:tweets).order("created_at DESC")
    @users = users.page(params[:page]).per(12)
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @user
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
    @ranks = User.joins(:tweets).group(:user_id).order('sum(run) desc')
    @like = Like.where(tweet_id: @tweets.ids).count
    @follows = @user.followings.count
    @followers = @user.followers.count
  end

  def follows
    @user = User.find(current_user.id)
    @users = @user.followings
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :image, :introduction)
  end

end
