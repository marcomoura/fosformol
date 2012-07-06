class Sprint < ActiveRecord::Base
  has_many   :feedbacks
  belongs_to :project
end
