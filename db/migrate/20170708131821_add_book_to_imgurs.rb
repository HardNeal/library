class AddBookToImgurs < ActiveRecord::Migration[5.0]
  def change
    add_reference :imgurs, :book, foreign_key: true
  end
end
