class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user!
    unless current_user
      flash[:danger] = "Please Log In"
      redirect_to login_users_path
    end
  end
end
