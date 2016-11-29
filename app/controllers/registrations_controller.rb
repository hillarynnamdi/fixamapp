class RegistrationsController < Devise::RegistrationsController




  protected

    def after_inactive_sign_up_path_for(resource)
        new_user_session_path
    end

  private
	  def sign_up_params
	    params.require(:user).permit(:first_name, :last_name, :gender, :email, :phone_number, :password, :password_confirmation)
	  end

end

