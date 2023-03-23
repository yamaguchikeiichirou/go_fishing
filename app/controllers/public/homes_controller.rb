class Public::HomesController < ApplicationController
  before_action :authenticate_angler!
  def top
    @fishing_successes = FishingSuccess.page(params[:page]).order(created_at: :desc)
  end
end
