class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string "name"
    	t.integer "num_project"
    	t.string "location"
    	t.string "category"
    	t.string "status"
    	t.text "memoria_descriptiva"
    	t.boolean "cover", :default => false
      t.timestamps
    end
  end
end
