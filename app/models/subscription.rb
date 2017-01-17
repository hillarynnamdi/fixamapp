class Subscription < ActiveRecord::Base

	validates :email,presence:true
	validates :email, uniqueness: true,if: "email.present?" 


end
