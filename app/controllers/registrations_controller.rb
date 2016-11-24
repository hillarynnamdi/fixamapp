class RegistrationsController < Devise::RegistrationsController



  def after_sign_up_path_for(resource_or_scope)
     if resource_name == :admin
  	   new_admin_session_path
       
    elsif
        resource_name == :user
        new_user_session_path
      
     end
  end


  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :gender, :email, :phone_number, :password, :password_confirmation)
  end

end

