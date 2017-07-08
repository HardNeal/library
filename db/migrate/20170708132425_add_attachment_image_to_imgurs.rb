class AddAttachmentImageToImgurs < ActiveRecord::Migration
  def self.up
    change_table :imgurs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :imgurs, :image
  end
end
