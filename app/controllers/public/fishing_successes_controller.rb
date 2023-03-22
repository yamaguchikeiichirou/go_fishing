class Public::FishingSuccessesController < ApplicationController
  before_action :authenticate_angler!
  def index
    @fishing_successes = params[:tag_id].present? ? Tag.find(params[:tag_id]).fishing_successes : FishingSuccess.all
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
    if @fishing_success.save
      redirect_to fishing_success_path(@fishing_success)
    else
      render :new
    end
  end

  def destroy
  end

  def fishing_success_params
      params.require(:fishing_success).permit(:angler_id, :fishing_day, :tackle, :method, :fishing_spot, :lng, :lat, :situation ,:image, tag_ids: [])
  end

end
