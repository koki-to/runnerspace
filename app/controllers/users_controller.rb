class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :destroy, :update, :show, :followers]
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @users = User.includes(:tweets).page(params[:page]).per(10)
  end

  def edit
  end

  def destroy
    @user.destroy
    redirect_to @user
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @tweets = @user.tweets.order("created_at DESC")
    @ranks = User.joins(:tweets).group(:user_id).order('sum(run) desc')
    @like = Like.where(tweet_id: @tweets.ids).count
    @follows = @user.followings.count
    @followers = @user.followers.count
  end

  def follows
    @user = User.find(current_user.id)
    @users = @user.followings.page(params[:page]).per(10)
  end

  def followers
    @users = @user.followers.page(params[:page]).per(10)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :image, :introduction)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
