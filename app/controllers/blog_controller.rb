class BlogController < ApplicationController
  def index
  	@posts=Blog.all.order("id DESC")
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
 
private
  def post_params
    params.require(:post).permit(:url, :image,:post,:title,:category)
  end



end
