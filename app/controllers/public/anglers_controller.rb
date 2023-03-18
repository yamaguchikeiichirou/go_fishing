class Public::AnglersController < ApplicationController
  before_action :authenticate_angler!
  def show
    @angler = current_angler
  end
  
  def my_favorite
  end
  
  def my_post
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
  end
  
  def angler_params
      params.require(:angler).permit(:name, :introduction, :profile_image)
  end
end
