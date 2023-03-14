class Admin::FishingSuccessesController < ApplicationController
  before_action :authenticate_admin!
  def index
  end

  def show
  end
  
  def destroy
  end
  
  def fishing_success_params
      params.require(:fishing_success).permit(:angler_id, :fishing_day, :species, :tackle, :method, :place, :lng, :lat, :situation)
  end
end
