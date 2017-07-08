class SonsController < ApplicationController
  def show
    @son = current_son
  end
end
