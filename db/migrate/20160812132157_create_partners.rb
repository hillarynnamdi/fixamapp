class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :state
      t.string :city
      t.string :office_location
      t.text :specializations

      t.timestamps null: false
    end
  end
end
