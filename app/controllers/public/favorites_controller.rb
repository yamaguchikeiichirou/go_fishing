class Public::FavoritesController < ApplicationController
  before_action :authenticate_angler!
  
  def create
  end
  
  def destroy
  end
  
  def favorite_params
      params.require(:favorite).permit(:angler_id, :fishing_success_id)
  end
end
