class FeedController < ApplicationController
before_action :authenticate_admin!

def create
	@feed = Feed.create(feed_params) 	
	@feed.save
end

def index
@feeds = Feed.all.order("id DESC")

end

private
def feed_params
	   params.require(:feed).permit(:name, :email, :mobile_no, :message)
end
end
