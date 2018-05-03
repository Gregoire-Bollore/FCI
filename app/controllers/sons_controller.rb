class SonsController < ApplicationController
  before_action :authenticate_son!

  def show
    @son = current_son
    if Sponsorship.exists?(son_id: @son.id)
      @son_sponsorships = Sponsorship.where(son_id: @son.id)
    end
  end
end
