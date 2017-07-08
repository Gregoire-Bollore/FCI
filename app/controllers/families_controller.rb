class FamiliesController < ApplicationController
  before_action :authenticate_family!

  def show
    @family = current_family
  end
end
