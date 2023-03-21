class Admin::CommentsController < ApplicationController
  before_action :authenticate_admin!

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to admin_root_path
  end

  def comment_params
      params.require(:comment).permit(:angler_id, :fishing_success_id, :content)
  end
end
