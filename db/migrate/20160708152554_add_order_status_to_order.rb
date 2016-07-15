class AddOrderStatusToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :order_status, :string,:default=>"pending"
  	add_column :orders, :order_number, :string
  	
  end
end
