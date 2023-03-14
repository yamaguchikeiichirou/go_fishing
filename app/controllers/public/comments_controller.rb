class Public::CommentsController < ApplicationController
  before_action :authenticate_angler!
  
  def create
  end
  
  def destroy
  end
  
  def comment_params
      params.require(:comment).permit(:angler_id, :fishing_success_id, :content)
  end
end
