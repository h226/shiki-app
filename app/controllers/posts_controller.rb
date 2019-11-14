class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def new
    @post = Post.new
  end 

  def create
    # @post = Post.new(content: params[:content])
    # @post.save
    redirect_to("/posts/index")
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:nickname, :imageUrl, :text)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
