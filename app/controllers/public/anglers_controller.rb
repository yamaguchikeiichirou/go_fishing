class Public::AnglersController < ApplicationController
  before_action :authenticate_angler!
  def show
  end

  def edit
  end
  
  def update
  end

  def verification
  end
  
  def destroy
  end
  
  def angler_params
      params.require(:angler).permit(:name, :introduction, :image)
  end
end
