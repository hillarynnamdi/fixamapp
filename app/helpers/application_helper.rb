module ApplicationHelper
	def avatar_url(email)
		gravatar_id = Digest::MD5.hexdigest(email.downcase)
		"https://gravatar.com/avatar/#{gravatar_id}.png"
	end

end
