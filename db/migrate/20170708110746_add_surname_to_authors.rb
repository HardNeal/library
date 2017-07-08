class AddSurnameToAuthors < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :surname, :string
  end
end
