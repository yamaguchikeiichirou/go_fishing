class Public::FishingSuccessesController < ApplicationController
  before_action :authenticate_angler!
  def index
    if params[:tag_id].present?
      @fishing_successes = Tag.find(params[:tag_id]).fishing_successes.page(params[:page]).order(created_at: :desc)
    elsif params[:fishing_spot].present?
      @fishing_successes = FishingSuccess.where(fishing_spot: params[:fishing_spot]).page(params[:page]).order(created_at: :desc)
    else
      @fishing_successes = FishingSuccess.page(params[:page]).order(created_at: :desc)
    end
  end

  def search
    @fishing_successes = FishingSuccess.search(params[:fishing_success][:keyword]).page(params[:page]).order(created_at: :desc)
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
