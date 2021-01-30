class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :move_top, only: :edit
  before_action :search_book, only: [:index, :search]
  before_action :set_params, only: [:show, :edit, :update, :destroy]

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
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  def search
    @results = @p.result
  end

  private

  def book_params
    params.require(:book).permit(:name, :text, :genre_id, :image).merge(user_id: current_user.id)
  end

  def move_top
    @book = Book.find(params[:id])
    redirect_to root_path unless current_user.id == @book.user_id
  end

  def search_book
    @p = Book.ransack(params[:q])
  end

  def set_params
    @book = Book.find(params[:id])
  end
end
