class FamiliesController < ApplicationController
  def show
    @family = current_family
  end
end
