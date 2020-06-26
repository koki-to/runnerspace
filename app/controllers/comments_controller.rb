class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.json
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
    end
end
