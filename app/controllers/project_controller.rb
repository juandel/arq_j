class ProjectController < ApplicationController
  
  def list
  	@projects= Project.all.sorted
  end

  def show
  	@project = Project.find(params[:id])  
  	@previous = Project.where("projects.id < ?", params[:id]).order(id: :desc).first
  	@next = Project.where("projects.id > ?", params[:id]).order(id: :asc).first	
  end
  def desarollo
  	@proj_desarollo = Project.all.sorted.where(:category => 'desarollo')
  end
  def construccion
  	@proj_construccion = Project.all.sorted.where(:category => 'construccion')
  end
  def vivienda
  	@proj_vivienda = Project.all.sorted.where(:category => 'vivienda')
  end
  def laboratorio
  	@proj_laboratorio = Project.all.sorted.where(:category => 'laboratorio')
  end
end
