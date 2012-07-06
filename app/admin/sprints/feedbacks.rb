ActiveAdmin.register Feedback do

  belongs_to :sprint

  menu false

  show do
    table_for feedbacks do
      column "Description", :description
    end
  end
end
