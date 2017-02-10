class FeedbackMailer < ApplicationMailer
	
	 default from: 'FeedResponse@gofixam.com-noreply'

	def send_mail(email,subject,message)
		@body = message
		mail(:to => email, :subject => subject)
	end		
end
