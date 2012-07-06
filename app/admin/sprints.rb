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
    @sprint = Sprint.find(params[:id])
    if @sprint.finalize
      redirect_to admin_project_path(@project), :notice => "Sprint successfully completed!"
    else
      redirect_to admin_project_path(@project), :alert => "Sprint successfully completed!"
    end
  end
end

