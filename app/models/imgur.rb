class Imgur < ApplicationRecord
 belongs_to :book

 has_attached_file :image,
                    styles: { medium: '256x256>', thumb: '100x100>', large: '400x400>'},
                    default_url: '/images/:style/miss.png'
 validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/gif', 'image/png']
end
