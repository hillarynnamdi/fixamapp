class PhonenumberController < ApplicationController
  before_action :authenticate_user!
  def new
  	@user=User.new
  end

def update
 @user = User.find(current_user.id)
 @user.update(update_userparams)
 if @user.save
 	redirect_to info_account_index_path
else
	render 'show'
end

  end


  def show
		@user=User.new
	end

def update_userparams
      params.require(:user).permit(:phone_number)
    end


end
