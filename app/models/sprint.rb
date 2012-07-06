class Sprint < ActiveRecord::Base
  has_many   :feedbacks
  belongs_to :project

  validates :project_id, :iteration, :active, :presence => true

  def to_s
    "sprint #{self.iteration}"
  end
end
