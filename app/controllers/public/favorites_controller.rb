class Public::FavoritesController < ApplicationController
  before_action :authenticate_angler!

  def create
    fishing_success = FishingSuccess.find(params[:fishing_success_id])
    favorite = current_angler.favorites.new(fishing_success_id: fishing_success.id)
    favorite.save
    redirect_to fishing_success_path(fishing_success)
  end

  def destroy
    fishing_success = FishingSuccess.find(params[:fishing_success_id])
    favorite = current_angler.favorites.find_by(fishing_success_id: fishing_success.id)
    favorite.destroy
    redirect_to fishing_success_path(fishing_success)
  end

  def favorite_params
      params.require(:favorite).permit(:angler_id, :fishing_success_id)
  end
end
