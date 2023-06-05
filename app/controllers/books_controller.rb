class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :user_self, only: [:edit, :update, :destroy]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to new_post_path
    else
      render :new
    end
  end

  def index
    @books = @user.books
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :translator, :publisher, :publish_year, 
                                 :total_page, :start_date).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def user_self
    unless user_signed_in? && current_user.id == @book.user_id
      redirect_to root_path
    end
  end
end
