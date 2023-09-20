class ApplicationController < ActionController::Base
  before_action :confiqure permitted parameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"] 
    end
  end
  def confiqure permitted parameters
    devise_parameter_sanitizer.parmit(:sign_up, keys: [:name, :orofile, :occopation, :position])
  end
end