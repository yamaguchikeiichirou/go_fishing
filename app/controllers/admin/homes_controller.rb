class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @comments = Comment.page(params[:page]).per(10).order(created_at: :desc)
  end
end
