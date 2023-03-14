class Admin::AnglersController < ApplicationController
  before_action :authenticate_admin!
  def index
  end

  def show
  end
  
  def destroy
  end
  
  def angler_params
      params.require(:angler).permit(:name, :introduction, :imag)
  end
end
