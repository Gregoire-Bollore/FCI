class FamiliesController < ApplicationController
  before_action :authenticate_family!

  def show
    @family = current_family

    if Sponsorship.where(:family_id == @family.id).present?
      @family_son = @family.sponsorship.son
    end
  end
end
