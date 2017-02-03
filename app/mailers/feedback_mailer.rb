class FeedbackMailer < ApplicationMailer
	
	 default from: 'Team-Gofixam@gofixam.com'

	def send_mail(email,subject,message)
		@body = message
		mail(:to => email, :subject => subject)
	end		
end
