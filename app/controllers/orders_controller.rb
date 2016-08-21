class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :pending, :cancelled, :delivered, :new ,:create ,:cancel ,:reorder]


def  first_form
    session[:state]=params[:state][:id];
    session[:city]=params[:city][:id];
    session[:address]=params[:address];
    if params[:area]
    session[:area]=params[:area][:id];
    end
    if params[:place]
    session[:place]=params[:place][:id];
    end


  end

  def  second_form

    session[:device_model]=params[:device_model];

            session[:device_type]=params[:device_type];

  session[:device_problem]=params[:device_problem];
  session[:order_id]="GOFIX"+Devise.friendly_token[0,20].first(6).upcase

  end

  def third_form
    
  end


  def index
    @user=current_user
    


    if params[:search]
       @all_order=pagination.where("order_number LIKE '#{params[:search]}%' ").order("updated_at DESC")
      
    
    else
    @all_order=pagination.order("updated_at DESC")

  end


  end

  def pending
    @user=current_user
    @all_order=pagination.where("order_status='pending'").order("updated_at DESC")

  end

  def delivered
    @user=current_user
    @all_order=pagination.where("order_status='delivered'").order("updated_at DESC")


  end

  def cancelled
    @user=current_user
    @all_order=pagination.where("order_status='cancelled'").order("updated_at DESC")

  end


  def cancel
    @user=current_user
    @order=@user.orders.find(params[:id])
    @order.order_status="cancelled"
    @order.save

    redirect_to orders_path
    flash[:order] = "Your repair order, #{@order.order_number}, has been cancelled successfully.Thank you!"

  end

    def reorder
    @user=current_user
    @order=@user.orders.find(params[:id])
    @order.order_status="pending"
    @order.save

    redirect_to orders_path
    flash[:order] = "Your repair order, #{@order.order_number}, has been re-sent successfully."

  end

  def new
    @user=current_user
    @order=Order.new

    @old_orders=@user.orders.select('distinct on(state,city,area,place,pickup_address) id,state,city,area,place,pickup_address').order(:state).last(3)


  end

  def create

    @user = User.find(current_user.id)
    @old_orders=@user.orders.last(3)

    if params[:address]
      params[:order].delete("state")
      params[:order].delete("city")
      params[:order].delete("area")
      params[:order].delete("place")
      params[:order].delete("pickup_address")

      @order=@user.orders.create(order_params)

      @address=Order.find(params[:address])
      @order.state=@address.state
      @order.city=@address.city
      @order.area=@address.area
      @order.place=@address.place
      @order.pickup_address=@address.pickup_address
      @order.order_number="GOFIX"+Devise.friendly_token[0,20].first(6).upcase
      if @order.save

        flash[:order] = "Your repair order has been placed successfully."
      flash.keep(:order)
        render js: "window.location = '#{orders_path}'"

      else

   respond_to do |format|

      format.js{}

    end




      end 
       
    else

       @order=@user.orders.create(order_params)
       @order.order_number="GOFIX"+Devise.friendly_token[0,20].first(6).upcase

       if @order.save
      flash[:order] = "Your repair order has been placed successfully."
      flash.keep(:order)
      render js: "window.location = '#{orders_path}'"

    

      else

    respond_to do |format|

      format.js{}

    end


    end


  end

end


def pagination
  @user = User.find(current_user.id)
  orders ||= @user.orders.paginate(:page => params[:page], :per_page => 6)

end

   private def order_params
      params.require(:order).permit(:device_type,:device_model,:device_problem,:state,:city,:area,:place,:pickup_address)
    end



  
end
