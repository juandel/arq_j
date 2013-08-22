class Project < ActiveRecord::Base

	has_many :images
	accepts_nested_attributes_for :images, allow_destroy: true
	
	scope :sorted, order(id: :asc)

	validates :name, :presence => true, :length =>{:maximum => 20}
  validates :category, :presence => true
  validates :status, :presence => true
	
	private
    def project_params
      params.require(:project).permit!
    end

	end

	
