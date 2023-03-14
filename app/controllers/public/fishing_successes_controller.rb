class Public::FishingSuccessesController < ApplicationController
  before_action :authenticate_angler!
  def index
  end

  def search
  end

  def show
  end

  def new
  end
  
  def create
  end
  
  def destroy
  end
  
  def fishing_success_params
      params.require(:fishing_success).permit(:angler_id, :fishing_day, :species, :tackle, :method, :place, :lng, :lat, :situation)
  end
end
