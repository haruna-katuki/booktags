class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.includes(:book).order("created_at DESC")
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @user = current_user
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:book_id, :memo, :page, :hidden_check)
  end
end
