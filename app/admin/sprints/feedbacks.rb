ActiveAdmin.register Feedback do

  menu false

  show do
    table_for feedbacks do
      column "Description", :description
    end
  end
end
