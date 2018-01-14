class SponsorshipsController < ApplicationController
  def create
    @sponsorship = Sponsorship.new
  end
end
