class AddRatingToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :rating, :string
  end
end
