class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable,:omniauthable, :omniauth_providers => [:facebook]
 has_many :orders,dependent: :destroy 





	def self.from_omniauth(auth)

		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
  		user.email = auth.info.email
	    user.first_name=auth.info.first_name
	    user.last_name=auth.info.last_name
	    user.gender = auth.extra.raw_info.gender
    	user.phone_number="00000000000"
    	user.password=Devise.friendly_token[0,20]
      user.has_password=false
      user.profile_icon = auth.info.image
  		user.skip_confirmation!
  		user.save
	 end
end


 def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes=params
        user.valid?
    end
      else
        super
  end
end

end
