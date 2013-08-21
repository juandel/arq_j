class Project < ActiveRecord::Base

	has_many :images
	accepts_nested_attributes_for :images, allow_destroy: true
	
	scope :sorted, order(id: :asc)

	def previous
		Project.where("projects.id > ?", :id).order(id: :desc).first
	end

	def next
		Project.where("projects.id < ?", :id).order(id: :desc).first
	end

	private
    def project_params
      params.require(:project).permit!
    end

	end

	
