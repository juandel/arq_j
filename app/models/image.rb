class Image < ActiveRecord::Base
	has_attached_file :photo, :styles => { :medium => "238x238>", :thumb => "100x100>"}
	belongs_to :project

	private
    def image_params
      params.require(:image).permit!
    end

end
