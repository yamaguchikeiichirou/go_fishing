class Public::FishingSuccessesController < ApplicationController
  before_action :authenticate_angler!
  def index
  end

  def search
    @fishing_successes = FishingSuccess.search(params[:fishing_success][:keyword])
    @keyword = params[:keyword]
    render "search"
  end

  def show
    @fishing_success = FishingSuccess.find(params[:id])
    @comment = Comment.new
  end

  def new
    @fishing_success = FishingSuccess.new
  end

  def create
    @fishing_success = FishingSuccess.new(fishing_success_params)
    @fishing_success.angler_id = current_angler.id
    @fishing_success.save
    redirect_to fishing_success_path(@fishing_success)
  end

  def destroy
  end

  def fishing_success_params
      params.require(:fishing_success).permit(:angler_id, :fishing_day, :species, :tackle, :method, :place, :lng, :lat, :situation ,:image)
  end

end
