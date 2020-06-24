class TweetsController < ApplicationController
  before_action :move_to_index, expect: :index
  before_action :set_tweet, only: [:destroy, :edit, :update, :show]
  def index
    tweets = Tweet.includes(:user).order("created_at DESC")
    @tweets = tweets.page(params[:page]).per(12)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def destroy
    @tweet.destroy
    redirect_to action: :index
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      render :edit
    end
  end

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end


  private
    def tweet_params
      params.require(:tweet).permit(:title, :text, :image, :run, :tag_ids).merge(user_id: current_user.id)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
end
