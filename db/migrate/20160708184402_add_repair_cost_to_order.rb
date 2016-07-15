class AddRepairCostToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :repair_cost, :string
  end
end
