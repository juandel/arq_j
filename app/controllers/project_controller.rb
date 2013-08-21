class ProjectController < ApplicationController
  def list
  	@projects= Project.all
  end

  def show
  	@project = Project.find_by_id(:params => :id)
  end
end
