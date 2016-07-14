class Place < ActiveRecord::Base
  belongs_to :area
  belongs_to :city
  belongs_to :state

  validates :place,presence:true
end
