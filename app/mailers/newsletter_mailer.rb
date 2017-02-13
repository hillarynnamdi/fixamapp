class NewsletterMailer < ApplicationMailer

	 default from: 'noreply+technewletter@gofixam.com'
          

  def newsletter(post)

  @post = post
  @recipients = Subscription.all
  mail(:to =>"", :subject => "Gofixam Tech News", :bcc => @recipients.map(&:email).join(","))
end

end
