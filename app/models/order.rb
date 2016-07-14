class Order < ActiveRecord::Base
  belongs_to :user
  


  validates :device_type,presence:true
  validates :device_model,presence:true,if: "device_type.present?"
  validates :device_problem,presence:true ,if: "device_model.present?"
  validates :state,presence:true 
  validates :city,presence:true,if: "state.present?"
  validates :area,presence:true,if: "city.present?"
  validates :pickup_address,presence:true,if: "area.present?"

end
