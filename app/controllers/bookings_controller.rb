class BookingsController < ApplicationController

	  before_action :authenticate_admin!


  def index
    @all_order=pagination.where("order_status='pending'").order("updated_at DESC")
  end

  def scheduled
    @all_order=pagination.where("order_status='scheduled'").order("updated_at DESC")

  end

  def pickedup
    @all_order=pagination.where("order_status='pickedup'").order("updated_at DESC")

  end

   def delivered
    @all_order=pagination.where("order_status='delivered'").order("updated_at DESC")

  end

 def edit
 	@booking=Order.joins(:user).find(params[:id])


 end

 def update
 	@booking=Order.find(params[:id])
 	 	@booking.update(order_params)
    if @booking.order_status=="scheduled"
 	      redirect_to scheduled_bookings_path
    elsif @booking.order_status=="pickedup"
        redirect_to pickedup_bookings_path
    elsif @booking.order_status=="delivered"
        redirect_to delivered_bookings_path
  elsif @booking.order_status=="cancelled"
        redirect_to bookings_path
    end
  
 	  flash[:success]="Update for Order No,#{@booking.order_number}, was successful"


 	

 	
 end


  def pagination

  @orders ||= Order.joins(:user).paginate(:page => params[:page], :per_page => 6)

end

	private 
	def order_params
	params.require(:order).permit(:order_status,:pickupdate,:repair_cost)

	end


end
