class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password])
 end

#to stay on my account page after signing in or out
 def after_sign_in_path_for(resource)
  myAccount_path
 end

 def after_sign_out_path_for(resource_or_scope)
  request.referrer
 end

end
