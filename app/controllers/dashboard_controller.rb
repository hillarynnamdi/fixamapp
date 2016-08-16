class DashboardController < ApplicationController
before_action :authenticate_admin!

	def index
		@total = User.all
		#@users= User.all.order("id DESC")
		@order_status= Order.all.order("id DESC")
		@orders = User.joins(:orders)
		if params[:search]
			@users = User.where("first_name LIKE '%#{params[:search]}%' or last_name LIKE '%#{params[:search]}%'
			 or phone_number LIKE '%#{params[:search]}%'")		
		end
	end

	def update		
		@order = Order.find(params[:id])
			if @order.update_attribute(:order_status,:status)
				redirect_to dashboard_index_path
			end 
	end

	def feedback
		@feeds = Feed.all.order("id DESC")
	end

end
