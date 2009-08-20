class <%= controller_class_name %>Controller < ApplicationController

  def show
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
  end

  def edit
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
  end

  def update
    @<%= singular_name %> = <%= class_name %>.find(params[:id])
    @<%= singular_name %>.attributes = params[:user]
    if @<%= singular_name %>.save
      flash[:notice] = 'Your account details have been changed.'
      redirect_to(user_url(@<%= singular_name %>))
    else
      render :action => "edit"
    end
  end

#   protected

#   def check_user
#     @<%= singular_name %> = <%= class_name %>.find_by_id(params[:id])
#     if @<%= singular_name %>.nil? || @<%= singular_name %> != current_user
#       store_location
#       flash[:warning] = "You must sign in to access this page"
#       redirect_to new_user_session_url
#       return false
#     end
#   end
end
