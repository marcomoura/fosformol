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



  show :title => :title do

    table_for project.sprints do
      column "Iteration" do |sprint|
        link_to(sprint.to_s, feedbacks_admin_sprint_path(sprint))
      end
    end

    link_to(project.title, new_admin_sprint_path(project))
  end

  member_action :sprints, :method => :get do
    #link_to "Finalizar sprint atual e iniciar um novo sprint ", "/"
    redirect feedbacks_admin_sprint_path(sprint)
  end


  # /admin/posts/:id/comments
end
