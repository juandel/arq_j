class Project < ActiveRecord::Base

	has_many :images
	accepts_nested_attributes_for :images, allow_destroy: true
	
	private
    def project_params
      params.require(:project).permit!
    end
end
