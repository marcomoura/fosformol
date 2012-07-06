ActiveAdmin.register Sprint do

  menu false

  member_action :feedbacks do
    @sprint = Sprint.find(params[:sprint])
  end

  show do
    table_for sprint.feedbacks do
      column "Description", :description
    end

  end

end

