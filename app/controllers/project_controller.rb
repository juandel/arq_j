class ProjectController < ApplicationController
  def list
  	@projects= Project.all.sorted
  end

  def show
  	@project = Project.find(params[:id])
  end
end
