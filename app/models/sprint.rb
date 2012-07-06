class Sprint < ActiveRecord::Base
  has_many   :feedbacks
  belongs_to :project

  validates :project_id, :iteration, :active, :presence => true
  validates :iteration, :uniqueness => {:scope => :project_id}

  def finalize
    self.update_attributes(:active => false)
    new_sprint = Sprint.create(:iteration => self.iteration.next, :project_id => self.project_id)

    new_sprint.valid?
  end

  def to_s
    "sprint #{self.iteration}"
  end
end
