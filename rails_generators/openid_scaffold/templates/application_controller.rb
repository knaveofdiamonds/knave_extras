# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all
  helper_method :current_<%= singular_name %>
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  protected
    
  def current_<%= singular_name %>
    return @current_<%= singular_name %> if defined?(@current_<%= singular_name %>)
    @current_<%= singular_name %> = <%= class_name %>.find_by_id(session[:<%= singular_name %>_id])
  end
    
  def store_location
    session[:return_to] = request.request_uri
  end
    
  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
