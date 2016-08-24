class State < ActiveRecord::Base
	has_many :cities,dependent: :destroy
	has_many :areas,dependent: :destroy
	has_many :places,dependent: :destroy

	before_validation { self.state = state.upcase }


	validates :state,presence:true
end
