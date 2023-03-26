class Public::CommentsController < ApplicationController
  before_action :authenticate_angler!

  def create
    fishing_success = FishingSuccess.find(params[:fishing_success_id])
    comment = current_angler.comments.new(comment_params)
    comment.fishing_success_id = fishing_success.id
    comment.save
    redirect_to request.referer
  end
  
  def destroy
    Comment.find_by(id: params[:id],fishing_success_id: params[:fishing_success_id]).destroy
    redirect_to request.referer
  end

  def comment_params
      params.require(:comment).permit(:angler_id, :fishing_success_id, :content)
  end
end
