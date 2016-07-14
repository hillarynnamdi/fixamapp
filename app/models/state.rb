class State < ActiveRecord::Base
	has_many :cities,dependent: :destroy
	has_many :areas,dependent: :destroy
	has_many :places,dependent: :destroy


	validates :state,presence:true
end
