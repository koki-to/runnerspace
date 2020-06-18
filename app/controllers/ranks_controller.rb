class RanksController < ApplicationController
  def index
    @all_rank = User.joins(:tweets).group(:user_id).order('sum(run) desc').limit(5)
  end
end
