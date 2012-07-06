class Project < ActiveRecord::Base
  has_many :sprints

  after_create :create_sprint_zero

  def current_sprint
    self.sprints.where(:active => true).last
  end

  protected

  def create_sprint_zero
    self.sprints.create
  end
end
