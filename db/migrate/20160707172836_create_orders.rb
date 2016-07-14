class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.string :city
      t.string :area
      t.string :place
      t.string :pickup_address
      t.string :device_type
      t.string :device_model
      t.text :device_problem
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
