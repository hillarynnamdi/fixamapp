class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable,:omniauthable, :omniauth_providers => [:facebook]
 has_many :orders,dependent: :destroy 



    def self.from_omniauth(auth,signed_in_resource=nil)
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      if user
        return user
      else
        registered_user = User.where(:email => auth.info.email).first
        if registered_user
          return registered_user
        else
          user = User.create(
                              provider:auth.provider,
                              uid:auth.uid,
                              email:auth.info.email,
                              password:Devise.friendly_token[0,20],
                              first_name:auth.info.first_name,
                              last_name:auth.info.last_name,
                              gender:auth.extra.raw_info.gender,
                              phone_number:"00000000000",
                              has_password:false,
                              profile_icon:auth.info.image

                                      )
          user.skip_confirmation!
          user.save

          if user
          return user
        end


        end
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
