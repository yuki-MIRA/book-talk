class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to book_path(comment_params[:book_id])
    else
      @book = Book.find(params[:book_id])
      @comments = @book.comments.includes(:user)
      render 'books/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
