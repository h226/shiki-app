class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end 

  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:name, :image, :text)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
