class SprintsController < ApplicationController

  before_filter :load_project

  def index
    @sprints = Project.sprints
  end

  protected

  def load_project
    @project = Project.find(params[:project_id], :include => :sprints)
  end
end
