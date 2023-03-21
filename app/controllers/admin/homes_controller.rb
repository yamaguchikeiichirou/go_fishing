class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @comments = Comment.all
  end
end
