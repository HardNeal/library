ActiveAdmin.register Book do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :desc, :image, :testimonial, :user_id, :author_id

	form do |f|
	  f.inputs do 
	  	f.input :name
	  	f.input :desc
	  	f.input :testimonial
	  	f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
	  	f.input :user
	  	f.input :author_id
	  end
	  f.actions
	end
 

	index do
		selectable_column
		id_column
		column :image do |place|
			image_tag place.image.url(:thumb)
		end
		column :name
		column :desc
		column :testimonial
		column :user
		column :author_id
		# column :encrypted_password => Токен
	 	 actions
	end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
