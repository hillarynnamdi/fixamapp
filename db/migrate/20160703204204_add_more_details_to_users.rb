class AddMoreDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string	, null: false, default: "" 
    add_column :users, :last_name, :string	, null: false, default: ""
    add_column :users, :gender, :string	, null: false, default: ""
    add_column :users, :phone_number, :string	, null: false, default: ""
  end
end
