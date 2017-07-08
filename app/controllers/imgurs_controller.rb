class ImgursController < ApplicationController
  def create
  	@imgur = Imgur.new(imgur_params)
    @imgur.save
    
    flash[:add] = "Вы создали книгу"
    redirect_to :back
  end

  private 

    def imgur_params
      params.require(:imgur).permit(:name, :image, :book_id)
    end 
end
