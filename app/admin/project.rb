ActiveAdmin.register Project do
  index do
    column :name
    column :num_project
    column :location
    column :category
    column :status
    column :memoria_descriptiva
    column :created_at
    default_actions
  end
  show do |work|
    attributes_table do
      row :name
      row :num_project
      row :location
      row :category
      row :status
      row :memoria_descriptiva
      row :created_at
      row :images do |item|
          item.images.collect do |image|
            image_tag(image.photo.url(:thumb))
          end.join.html_safe
        end
    end
    active_admin_comments
  end 


  form html: {id: 'has_many_images', multipart: true} do |f|
	  f.inputs ("#{f.object.class.to_s}") do
	  	f.input :name
	  	f.input :num_project
	  	f.input :location
	  	f.input :category, :as => :select, :collection => ["", "", "", ""]
	  	f.input :status, :as => :select, :collection => ["", "", "", ""]
	  	f.input :memoria_descriptiva
	  end
    f.has_many :images, title: 'Images' do |fi|
    	if fi.object.new_record?
        fi.input :photo, as: :file 
      else
      fi.input :cover, :as => :boolean, :label => "Cover"
      fi.input :_destroy, :as => :boolean, :label => "Destroy?",
        :hint => fi.template.image_tag(fi.object.photo.url(:thumb))
            end
    end 	  		
    f.buttons
	end
end
