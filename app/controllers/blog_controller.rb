class BlogController < ApplicationController

  before_action :authenticate_admin!, only: [:new ,:create ,:edit]

  impressionist actions: [:show], unique: [:session_hash]

  def index
  	@posts=pagination
    @posts2=pagination2
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
  @posts=pagination.where("category='Apps'")
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

  def edit 
    @post=Blog.find_by_url(params[:id])

  end

  def show
  	@post=Blog.find_by_url(params[:id])
    @post_id=@post.id
    @post_track=Postcounter.where("blog_id='#{@post_id}' and ip_address='#{request.remote_ip}'")

    if @post_track.count==0
        @ip=request.remote_ip
        @save_post_track=Postcounter.create({ :blog_id => @post_id, :ip_address =>@ip  })
        
        @all_track_for_post=Postcounter.where("blog_id='#{@post_id}'").count

    else

      @all_track_for_post=Postcounter.where("blog_id='#{@post_id}'").count



    end

    @posts2=pagination2




  end

def update
  @post=Blog.find_by_url(params[:id])
    if @post.update(post_params)
    redirect_to blog_index_path 
  else
    render 'edit'
  end
end

def destroy
  @post=Blog.find_by_url(params[:id])
   if @post.destroy
    redirect_to blog_index_path 
  end
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

def pagination2
@pagination=Blog.order("id DESC").offset(7).limit(5)
  end
 
private
  def post_params
    params.require(:post).permit(:url, :image,:post,:title,:category)
  end



end
