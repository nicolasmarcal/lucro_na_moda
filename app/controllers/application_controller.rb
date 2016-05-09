class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_admin_user!
  before_filter :current_company

  def current_company
    @current_company = current_admin_user.company if current_admin_user
  end
end
