class Sprint < ActiveRecord::Base
  has_many   :feedbacks
  belongs_to :project

  validates :project_id, :iteration, :presence => true
  validates :iteration, :uniqueness => {:scope => :project_id}

  default_scope order('iteration DESC')

  def finalize
    return false unless self.update_attributes(:active => false)
    new_sprint = Sprint.create(:iteration => self.iteration.next, :project_id => self.project_id)

    new_sprint.valid?
  end

  def to_s
    "sprint #{self.iteration}"
  end
end
