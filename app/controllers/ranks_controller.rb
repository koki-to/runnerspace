class RanksController < ApplicationController
  before_action :authenticate_user!
  def index
    @all_rank = User.joins(:tweets).group(:user_id).order('sum(run) desc').limit(10)
  end
end
