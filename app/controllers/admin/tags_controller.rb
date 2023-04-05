class Admin::TagsController < ApplicationController
  def new
    @tags = Tag.all
    @tag = Tag.new
  end

  def create
    tag = Tag.new(tag_params)
    tag.save
    redirect_to request.referer
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to request.referer
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end


