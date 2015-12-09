class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # Define current_user so views are personalized based on who is logged in.
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # include helper_method so app can recognize current_user
  helper_method(:current_user)

  protect_from_forgery with: :exception
end
