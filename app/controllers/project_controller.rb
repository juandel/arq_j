class ProjectController < ApplicationController
  def list
  	@projects= Project.all.sorted
  end

  def show
  	@project = Project.find(params[:id])  
  	@previous = Project.where("projects.id < ?", params[:id]).order(id: :desc).first
  	@next = Project.where("projects.id > ?", params[:id]).order(id: :asc).first	
  end
end
