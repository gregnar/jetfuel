class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_root_url

  def current_root_url
    @current_root_url ||= request.host_with_port
  end
  
end
