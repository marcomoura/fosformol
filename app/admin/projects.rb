ActiveAdmin.register Project do

  #index :as => :grid do |project|
  #link_to(project.title, admin_project_path(project))
  #end

  #index :as => :block do |project|
  #div :for => project do
  #h2 auto_link(project.title)
  #end
  #end

  index do
    column "Project" do |project|
      link_to project.title, admin_project_path(project)
    end
    column "Actions" do |project|
      link_to 'Edit', edit_admin_project_path(project)
      link_to 'Destroy', project, :confirm => 'Are you sure?', :method => :delete
    end
  end



  show do
    h3 project.title

    #active_admin_sprints
  end
end
