class BooksController < ApplicationController
  before_action :authenticate_user!

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @user = current_user
    @books = @user.books
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :translator, :publisher, :publish_year, 
                                 :total_page, :start_date).merge(user_id: current_user.id)
  end
end
