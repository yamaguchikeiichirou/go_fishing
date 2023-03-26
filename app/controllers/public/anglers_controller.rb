class Public::AnglersController < ApplicationController
  before_action :authenticate_angler!
  def show
    @angler = current_angler
  end

  def my_favorite
    favorites = Favorite.where(angler_id: current_angler.id).pluck(:fishing_success_id)
    @fishing_successes = FishingSuccess.find(favorites)
    @fishing_successes = Kaminari.paginate_array(@fishing_successes).page(params[:page])
  end

  def my_post
    @fishing_successes = current_angler.fishing_successes.page(params[:page]).order(created_at: :desc)
  end

  def edit
    @angler = current_angler
  end

  def update
    @angler = current_angler
    if @angler.update(angler_params)
      redirect_to anglers_mypage_path
    else
      render :edit
    end
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
