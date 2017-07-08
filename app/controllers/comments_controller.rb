class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)

    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body, :rating, :book_id, :user_id)
  end

end
