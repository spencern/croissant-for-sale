class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_subdomain
    @current_subdomain = request.subdomains.last
  end
  helper_method :current_subdomain
end
