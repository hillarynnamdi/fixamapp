class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  add_flash_types :successful, :mailer



    def after_sign_in_path_for(resource_or_scope)
     if resource_name == :admin
         bookings_path
    elsif resource_name == :user 

    if session[:state].present? && session[:city].present? && session[:address].present? && session[:area].present? && session[:device_model].present? && session[:device_type].present? && session[:device_problem].present?
        @user=current_user  
        @order=@user.orders.create(device_type:session[:device_type],device_model:session[:device_model],state:session[:state],city:session[:city],area:session[:area],pickup_address:session[:address],place:session[:place],device_problem:session[:device_problem],order_number:session[:order_id])
          if @order
          
          flash[:order]="Your repair order has been placed successfully."

          session.delete(:state)
          session.delete(:city)
          session.delete(:area)
          session.delete(:place)
          session.delete(:address)
          session.delete(:device_type)
          session.delete(:device_model)
          session.delete(:device_problem)
          session.delete(:order_id)
          

          end
    end

    if current_user.phone_number=="00000000000"      
      phonenumber_path(current_user.first_name)
    else

        


       orders_path
    end

         

    end



  end


  def after_sign_up_path_for(resource_or_scope)
     if resource_name == :admin
  	   new_admin_session_path
       
    elsif
        resource_name == :user
        new_user_registration_path
      
     end
  end


  def after_sign_out_path_for(resource_or_scope)
     if resource_name == :admin
       new_admin_session_path
    elsif resource_name == :user
      new_user_session_path
     end
  end 

  def after_accept_path_for(resource)
  	accept_admin_invitation_path
  end


 


end
