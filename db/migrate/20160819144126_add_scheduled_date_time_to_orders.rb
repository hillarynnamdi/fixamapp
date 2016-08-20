class AddScheduledDateTimeToOrders < ActiveRecord::Migration
  def change

  	add_column :orders, :pickupdate, :string
  	
  end
end
