class FeedbackMailer < ApplicationMailer
	
	 default from: 'noreply+feedreply@gofixam.com'

	def send_mail(email,subject,message)
		@body = message
		mail(:to => email, :subject => subject)
	end		
end
