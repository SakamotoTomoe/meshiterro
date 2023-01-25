class ApplicationController < ActionController::Base
  
  before_action :configure_premitted_parometers, if: :devise_controller?
  
  
  protected
  
  def configure_premitted_parometers
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end
end
