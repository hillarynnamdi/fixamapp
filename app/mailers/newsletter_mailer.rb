class NewsletterMailer < ApplicationMailer

	 default from: 'Gofixam.com'
          

  def newsletter(post)
  @post = post
  @recipients = Subscription.all
  mail(:to =>"admin@gofixam.com", :subject => "Gofixam Tech News", :bcc => @recipients.map(&:email).join(","))
end

end
