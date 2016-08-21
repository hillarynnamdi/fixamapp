class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable,:omniauthable, :omniauth_providers => [:facebook]
 has_many :orders,dependent: :destroy

    validates :first_name, presence: true
	validates :first_name, length: {minimum:2} ,if: "first_name.present?"
	validates :first_name, length: {maximum:20} ,if: "first_name.present?"


  	validates :last_name, presence: true
	validates :last_name, length: {minimum:2} ,if: "last_name.present?"
	validates :last_name, length: {maximum:20} ,if: "last_name.present?"


 	validates :gender, presence: true



  	validates :phone_number, presence: true
  	validates :phone_number,numericality: { only_integer:true},if: "phone_number.present?"
	validates :phone_number, length: { minimum: 11 } ,if: "phone_number.present?"
	validates :phone_number, length: {maximum:11} ,if: "phone_number.present?"



 


	def self.from_omniauth(auth)

		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
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
		#user.name = auth.info.name   # assuming the user model has a name
		#user.image = auth.info.image # assuming the user model has an image
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
