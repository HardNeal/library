class AddDescToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :desc, :text
  end
end
