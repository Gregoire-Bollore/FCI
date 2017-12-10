class SonsController < ApplicationController
  before_action :authenticate_son!

  def show
    @son = current_son
    # if Sponsorship.exists?(son_id: @son.id)
    #   @family_number = Sponsorship.where(son_id: @son.id).count
    #   (1..@family_number).each do |n|
    #     @family_"#{n}" = Sponsorship.where(son_id: @son.id)["#{n}"-1]
    #   end
    # end
  end
end
