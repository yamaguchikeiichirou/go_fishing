class Public::HomesController < ApplicationController
  before_action :authenticate_angler!, except: [:top]
  def top
    @fishing_successes = FishingSuccess.order(created_at: :desc).limit(3)
  end
end
