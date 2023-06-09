class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :create, :edit, :update]
  before_action :user_self, only: [:edit, :update, :destroy]

  def index
    @posts = Post.includes(book: :user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:book_id, :memo, :page, :hidden_check)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def user_self
    unless user_signed_in? && current_user.id == @post.book.user.id
      redirect_to action: :index
    end
  end

end
