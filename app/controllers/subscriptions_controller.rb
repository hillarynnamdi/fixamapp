class SubscriptionsController < ApplicationController

	def create
	@subscription=Subscription.new(subscribe_params)
	@subscription.save

	end

	private 
	def subscribe_params
		params.require(:subscription).permit(:email)

	end

end
