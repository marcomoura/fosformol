ActiveAdmin.register Sprint do

  belongs_to :project

  menu false

  member_action :feedbacks do
    @sprint = Sprint.find(params[:id])
  end

  show do
    table_for sprint.feedbacks do
      column "Description", :description
    end
  end

  member_action :new_sprint do
    @project = Project.find(params[:id])
    if @project.try(:current_sprint).try(:finalize)
      redirect_to admin_project_path(@project), :notice => "Sprint successfully completed!"
    else
      redirect_to admin_project_path(@project), :alert => "Sprint successfully completed!"
    end
  end
end

