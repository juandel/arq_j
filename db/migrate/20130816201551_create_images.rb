class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :project
      t.has_attached_file :photo
      t.timestamps
    end
  end
end
