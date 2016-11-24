class HomeController < ApplicationController

  def index
  	@user=current_user

 @username="SENDGRID_USERNAME: #{ENV['SENDGRID_USERNAME']}"
 @password= "SENDGRID_PASSWORD: #{ENV['SENDGRID_PASSWORD']}" 

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
