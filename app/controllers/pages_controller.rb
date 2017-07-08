class PagesController < ApplicationController
  # skip_before_action :authenticate_family!, :authenticate_son!, only: [ :home ]

  helper_method :resource_name, :resource, :devise_mapping

  def home
  end

  def resource_name
    :family
  end

  def resource
    @resource ||= Family.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:family]
  end
end
