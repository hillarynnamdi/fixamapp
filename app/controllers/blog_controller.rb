class BlogController < ApplicationController
  def index
  	@posts=pagination
  end



 def mobiles
  @posts=pagination.where("category='Mobiles'")
end

def internet 
  @posts=pagination.where("category='Internet'")
end


def tablets
  @posts=pagination.where("category='Tablets'")
end

def gaming
  @posts=pagination.where("category='Gaming'")
end

def cameras
  @posts=pagination.where("category='Cameras'")
end

def socials
  @posts=pagination.where("category='Socials'")
end

def apps
  @posts=pagination.where("category='App'")
end

def pc_laptops
  @posts=pagination.where("category='Pc/Laptops'")
end

def startups
  @posts=pagination.where("category='Startups'")
end

def tech
  @posts=pagination.where("category='Tech'")
end

def science
  @posts=pagination.where("category='Science'")
end

def audio_videos
  @posts=pagination.where("category='Audio/Videos'")
end

def telecom
  @posts=pagination.where("category='Telecom'")
end



  def new
  	@post=Blog.new 

  end

  def show
  	@post=Blog.find_by_url(params[:id])


  end

 
def create
  @post = Blog.new(post_params)
 
  if @post.save
    redirect_to blog_index_path 
  else
    render 'new'
  end
end

def pagination
@pagination=Blog.order("id DESC").paginate(:page => params[:page], :per_page => 7)
  end
 
private
  def post_params
    params.require(:post).permit(:url, :image,:post,:title,:category)
  end



end
