class ProjectController < ApplicationController
  def list
  	@projects= Project.all
  end

  def show
  	@project = Project.find(params[:id])
  end
end
