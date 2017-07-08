class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author
  
  has_many :comments
  
  has_attached_file :image,
                    styles: { medium: '256x256>', thumb: '100x100>', large: '400x400>'},
                    default_url: '/images/:style/miss.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']

   def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  # where("content LIKE ?", "%#{search}%")
	end                 
end
