class Public::HomesController < ApplicationController
  before_action :authenticate_angler!
  def top
  end
end
