class Subscription < ActiveRecord::Base

	validates :email,presence:true
	validates :email, uniqueness: {message: "already subscribed to list, Gofixam Newsletter."},if: "email.present?" 


	


end
