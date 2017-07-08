class BooksController < ApplicationController
  def index
    if params[:search]
        @books = Book.search(params[:search]).order("created_at DESC")
    else
        @books = Book.all.order('created_at DESC')
    end
  end

  def show
  	if user_signed_in?
	  	@book = Book.find(params[:id])
  		@check = Comment.where(user_id: current_user.id, book_id: @book.id)
  	else 
  		flash[:reg] = 'Сперва зарегистрируйтесь'
  		redirect_to new_user_registration_path
  	end
  end

  def new
    @book = Book.new
  end
   
  def create
    @book = Book.new(book_params)
    @book.save
    
    flash[:add] = "Вы создали книгу"
    redirect_to root_path
  end

  private 

    def book_params
      params.require(:book).permit(:name, :desc, :image, :user_id, :author_id)
    end 

end
