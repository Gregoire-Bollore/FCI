class SonsController < ApplicationController
  before_action :authenticate_son!

  def show
    @son = current_son
  end
end
