class ApplicationController < ActionController::Base
  
  
  
  private
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, 
   keys: [:email, :password, :name, :profile, :occupation, :position])
   devise_parameter_sanitizer.permit(:sign_in, 
   keys: [:email, :password])
  end
  	


end