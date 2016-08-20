class AccountController < ApplicationController
before_action :authenticate_user!
	def index
		@user=current_user


	end

	def update

    	
	@user=User.find(current_user.id)
	 if @user.update(update_params)
	 	redirect_to account_index_path
	 	flash[:account_updated]="Your account has been updated successfully."
  	else
  		render 'index'
  	end

	end

	def show
		@user=User.find(current_user.id)
		redirect_to account_index_path
	end

	def change_password
		@user=current_user
	end

	def update_password
		@user=User.find(current_user.id)

		if !@user.has_password?
		      params.delete("current_password")
		      		if @user.update(password_update_params)
		      			@user.has_password=true
		      			@user.save
	 	sign_in @user, :bypass => true
	 	redirect_to change_password_account_index_path
	 	flash[:account_updated]="Your password has been updated successfully."

  	else
  		render 'change_password'
  	end

  else

  	if @user.update_with_password(password_update_params)
  		

	 	sign_in @user, :bypass => true
	 	redirect_to change_password_account_index_path
	 	flash[:account_updated]="Your password has been changed successfully."

  	else
  		render 'change_password'
  	end
		end



	end

	def delete_account
		@user=User.find(current_user.id)
		
	end


	def remove_user
		@user=User.find(current_user.id)
		@user.destroy
		sign_out @user
		redirect_to  new_user_session_path
		flash[:notice]="Bye! Your account has been successfully cancelled. We hope to see you again soon."

	end



	private def update_params
      params.require(:user).permit(:email,:first_name,:last_name,:gender,:phone_number,:location,:profile_icon,:preferred_language,:location)
	end

	private def password_update_params
      params.require(:user).permit(:current_password,:password, :password_confirmation,)
	end




end
