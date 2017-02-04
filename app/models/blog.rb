class Blog < ActiveRecord::Base

	validates :url,presence:true
	  validates :image,presence:true
	   validates :post,presence:true
	   validates :title,presence:true
	   validates :category,presence:true
	   validates :url, uniqueness: {message: "already exist"},if: "url.present?" 

	  is_impressionable
	   
end
