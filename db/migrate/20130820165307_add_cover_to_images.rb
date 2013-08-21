class AddCoverToImages < ActiveRecord::Migration
  def change
  	add_column("images", "cover", :integer)
  end
end
