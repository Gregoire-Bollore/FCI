class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :ordination_date, :first_names_and_ages, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio]
    devise_parameter_sanitizer.for(:account_update) << [:first_name, :last_name, :ordination_date, :first_names_and_ages, :address, :street_number, :route, :postal_code, :locality, :administrative_area_level_1, :country, :bio]
  end

end
