class Public::AnglersController < ApplicationController
  before_action :authenticate_angler!
  def show
    @angler = current_angler
  end

  def my_favorite
    favorites = Favorite.where(angler_id: current_angler.id).pluck(:fishing_success_id)
    @fishing_successes = FishingSuccess.find(favorites)
  end

  def my_post
    @fishing_successes = current_angler.fishing_successes.page(params[:page]).order(created_at: :desc)
  end

  def edit
    @angler = current_angler
  end

  def update
    @angler = current_angler
    @angler.update(angler_params)
    redirect_to anglers_mypage_path
  end

  def verification
  end

  def destroy
    current_angler.destroy
    redirect_to root_path
  end

  def angler_params
      params.require(:angler).permit(:name, :introduction, :profile_image)
  end
end
