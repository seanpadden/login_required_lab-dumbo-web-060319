class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :require_login
  
  def current_user
    session[:name] ||= params[:name]
  end
  
  def require_login
    redirect_to '/login' unless current_user
  end
end
