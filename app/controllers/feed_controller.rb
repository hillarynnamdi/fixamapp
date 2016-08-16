class FeedController < ApplicationController

def create
	@feed = Feed.create(feed_params) 	
	respond_to do |format|
	if @feed.save
		format.js{}
	else
		format.js{}
	end
	end
end

private
def feed_params
	   params.require(:feed).permit(:name, :email, :mobile_no, :message)
end
end
