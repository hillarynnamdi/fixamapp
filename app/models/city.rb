class City < ActiveRecord::Base
  belongs_to :state
  has_many :areas,dependent: :destroy
  has_many :places,dependent: :destroy

  validates :city,presence:true
end
