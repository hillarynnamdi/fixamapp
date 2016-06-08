class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_up_path_for(resource_or_scope)
  	new_admin_session_path
  end

  def after_sign_out_path_for(resource_or_scope)
  	new_admin_session_path
  end 

  def after_accept_path_for(resource)
  	accept_admin_invitation_path
  end
end
