ActiveAdmin.register Sprint do

  belongs_to :project

  menu false

  member_action :feedbacks do
    @sprint = Sprint.find(params[:id])
  end

  index do
    @project = params[:project_id]
    @sprint = Project.find(@project).sprints
    table_for @sprint do
      column "Iteration", :to_s
    end
  end


  action_item :only => :index do
    link_to("Start next SPRINT", new_sprint_admin_project_path(params[:project_id]))
  end
end

