class BooksController < ApplicationController
  def show
  	@book = Book.find(params[:id])
  end

  def create
  end

  def new
  end
end
