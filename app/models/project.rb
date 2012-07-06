class Project < ActiveRecord::Base
  has_many :sprints

  after_create :create_sprint_zero

  protected

  def create_sprint_zero
    self.sprints.create
  end
end
