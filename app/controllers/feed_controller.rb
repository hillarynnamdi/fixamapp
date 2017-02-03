class FeedController < ApplicationController

before_action :authenticate_admin!, only: [:index]


def create
	@feed = Feed.create(feed_params) 	
	@feed.save
end

def index
@feeds = Feed.all.order("id DESC")

end

def send_feed
		@message = params[:feed][:message]
		@subject = params[:feed][:subject]
		@email = params[:feed][:email]
	if FeedbackMailer.send_mail(@email,@subject,@message).deliver
		redirect_to feed_index_path
		flash[:mailer] = "Mail Sent Successfully"
	else 
		render "/dashboard/feed"
		flash[:mailer] = "Sending Failed"
	end
		
end

private
def feed_params
	   params.require(:feed).permit(:name, :email, :mobile_no, :message)
end
end
