ActiveAdmin.register Feedback do

  form :partial => "form"

  belongs_to :sprint

  menu false

  show do
    table_for feedbacks do
      column "Description", :description
    end
  end

end
