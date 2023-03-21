class Admin::AnglersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @anglers = Angler.all
  end

  def show
    @angler = Angler.find(params[:id])
  end

  def destroy
    Angler.find(params[:id]).destroy
    redirect_to admin_anglers_path
  end

  def angler_params
      params.require(:angler).permit(:name, :introduction, :imag)
  end
end
