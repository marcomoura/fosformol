class SprintsController < ApplicationController

  before_filter :load_project

  def index
    @sprints = @project.sprints
  end

  def destroy
    @sprint = Sprint.find(params[:id])
    if @sprint.finalize
      redirect_to admin_project_path(@project), :notice => "Sprint successfully completed!"
    else
      redirect_to admin_project_path(@project), :alert => "Sprint successfully completed!"
    end
  end

  protected

  def load_project
    @project = Project.find(params[:project_id], :include => :sprints)
  end
end
