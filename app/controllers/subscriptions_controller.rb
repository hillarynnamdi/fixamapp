class SubscriptionsController < ApplicationController

	def create
	@subscription=Subscription.new(subscribe_params)
	@subscription.save

	end

	private 
	def subscribe_params
		params.require(:subscriber).permit(:email)

	end

end
