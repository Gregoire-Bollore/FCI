class PagesController < ApplicationController
  skip_before_action :authenticate_family!, only: [ :home ]

  def home
  end
end
