class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit]

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

  def edit
    @user = current_user
  end

  private

  def post_params
    params.require(:post).permit(:book_id, :memo, :page, :hidden_check)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
