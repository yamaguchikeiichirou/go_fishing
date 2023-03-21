class Public::HomesController < ApplicationController
  before_action :authenticate_angler!
  def top
    @fishing_successes = FishingSuccess.order(created_at: :desc)
  end
end
