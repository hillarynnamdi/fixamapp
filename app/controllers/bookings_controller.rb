class BookingsController < ApplicationController

	  before_action :authenticate_admin!


  def index
    @all_order=pagination.where("order_status='pending'").order("id DESC")
  end

  def scheduled
    @all_order=pagination.where("order_status='scheduled'").order("id DESC")

  end

  def pickedup
    @all_order=pagination.where("order_status='pickedup'").order("id DESC")

  end

   def delivered
    @all_order=pagination.where("order_status='delivered'").order("id DESC")

  end

 def edit
 	@booking=Order.joins(:user).find(params[:id])


 end

 def update
 	@booking=Order.find(params[:id])
 	 	@booking.update(order_params)
 	redirect_to edit_booking_path(@booking)
 	flash[:success]="Update was successful"
 	

 	
 end


  def pagination

  @orders ||= Order.joins(:user).paginate(:page => params[:page], :per_page => 6)

end

	private 
	def order_params
	params.require(:order).permit(:order_status,:pickupdate,:repair_cost)

	end


end
