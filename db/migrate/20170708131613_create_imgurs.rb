class CreateImgurs < ActiveRecord::Migration[5.0]
  def change
    create_table :imgurs do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
