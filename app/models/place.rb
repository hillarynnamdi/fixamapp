class Place < ActiveRecord::Base
  belongs_to :area
  belongs_to :city
  belongs_to :state

  validates :place,presence:true

  before_validation { self.place = place.camelcase }

end
