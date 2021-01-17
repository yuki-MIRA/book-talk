class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :move_top, only: :edit

  def index
    @books = Book.includes(:user).order('created_at DESC')
  end

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
  
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :text, :genre_id, :image).merge(user_id: current_user.id)
  end

  def move_top
    @book = Book.find(params[:id])
    unless current_user.id == @book.user_id
      redirect_to root_path
    end
  end

end
