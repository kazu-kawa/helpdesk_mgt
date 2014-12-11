class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
    #before_actionを設定
  before_action :authenticate_user!

  #before_filterを設定
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #strong parametersを設定し、useridを許可
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:userid, :email, :password, :password_confirmation, :email) }
  end
end

