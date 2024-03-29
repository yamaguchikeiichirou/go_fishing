class Admin::FishingSuccessesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @fishing_successes = FishingSuccess.page(params[:page]).per(10).order(created_at: :desc)
  end

  def show
    @fishing_success = FishingSuccess.find(params[:id])
  end

  def destroy
    FishingSuccess.find(params[:id]).destroy
    redirect_to admin_fishing_successes_path
  end

  def fishing_success_params
      params.require(:fishing_success).permit(:angler_id, :fishing_day, :tackle, :method, :fishing_spot, :lng, :lat, :situation, tag_ids: [])
  end
end
