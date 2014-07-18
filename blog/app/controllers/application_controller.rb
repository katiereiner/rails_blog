class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   before_action :configure_permitted_parameters, if: :devise_controller?

   def resource_name
    :user
   end
   helper_method :resource_name
 
   def resource
     @resource ||= User.new
  end
  helper_method :resource
 
   def devise_mapping
     @devise_mapping ||= Devise.mappings[:user]
   end
   helper_method :devise_mapping

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
  end
end
