class HomeController < ApplicationController
  def index
  end

  def new_guest
    user = User.find_by(name: "ゲスト")
    sign_in user
    redirect_to tweets_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end
