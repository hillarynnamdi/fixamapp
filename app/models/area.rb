class Area < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  has_many :places,dependent: :destroy


  validates :area,presence:true
end
