class AdminsController < ApplicationController
	before_action :authenticate_admin!
	
	def index
		@users= User.all.order("id DESC")
		
	end

	def send_mail		
	end

	def show
		@feeds = Feed.all.order("id DESC")
		@users= User.all.order("id DESC")
		
		
		
	end

	def feedback
		@feeds = Feed.all.order("id DESC")
	end

	
end
