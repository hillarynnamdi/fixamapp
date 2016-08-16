class Feed < ActiveRecord::Base

validates :name,presence:true
validates :email,presence:true
validates :mobile_no,presence:true
validates :message,presence:true

end
