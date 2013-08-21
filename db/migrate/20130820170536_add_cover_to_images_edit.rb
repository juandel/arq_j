class AddCoverToImagesEdit < ActiveRecord::Migration
  def change
	 	change_column("images", "cover", :boolean, :default => false)
  end
end
