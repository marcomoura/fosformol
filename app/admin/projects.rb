ActiveAdmin.register Project do

  index do
    column "Project" do |project|
      link_to project.title, admin_project_sprints_path(project)
    end
    column "Actions" do |project|
      link_to 'Edit', edit_admin_project_path(project)
      link_to 'Destroy', project, :confirm => 'Are you sure?', :method => :delete
    end
  end



  show :title => :title do
    table_for project.sprints do
      column "Iteration" do |sprint|
        link_to(sprint.to_s, feedbacks_admin_sprint_path(sprint))
      end
    end
  end

  action_item :only => :show do
    link_to("Start next SPRINT", new_sprint_admin_sprint_path(project))
  end
end
