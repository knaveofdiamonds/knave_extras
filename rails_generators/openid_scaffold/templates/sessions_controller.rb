class SessionsController < ApplicationController
  def new
  end

  def create
    open_id_authentication(params[:openid_identifier])
  end
  
  private

  def open_id_authentication(oid)
    # Pass optional :required and :optional keys to specify what sreg fields you want.
    # Be sure to yield registration, a third argument in the #authenticate_with_open_id block.
    authenticate_with_open_id(oid, :required => [:email,:fullname]) do |result, identity_url, registration|
      case result.status
      when :missing
        failed_login "Sorry, the OpenID server couldn't be found"
      when :invalid
        failed_login "Sorry, but this does not appear to be a valid OpenID"
      when :canceled
        failed_login "OpenID verification was canceled"
      when :failed
        failed_login "Sorry, the OpenID verification failed"
      when :successful
        @<%= singular_name %> = <%= class_name %>.find_by_openid_identifier(identity_url)
        
        if @<%= singular_name %>
          flash[:notice] = "Welcome back."
        else
          @<%= singular_name %> = <%= class_name %>.create(:openid_identifier => identity_url)
          @<%= singular_name %>.update_attributes(:name => registration['fullname'], 
                                  :email => registration['email'])
          flash[:notice] = "Account created"
        end

        session[:<%= singular_name %>_id] = @<%= singular_name %>.id        
        redirect_to signed_in_destination
      end
    end
  end
  
  def signed_in_destination
    (@<%= singular_name %>.email.blank? || @<%= singular_name %>.name.blank?) ? edit_user_url(@<%= singular_name %>) : user_url(@<%= singular_name %>)
  end

  def failed_login(message)
    flash[:notice] = message
    redirect_to root_url
  end
end
