class Project < ActiveRecord::Base
  has_many :sprints

  validates :title, :presence   => true
  validates :title, :uniqueness => true, :allow_blank => true

  after_create :create_sprint_zero

  def to_s
    title
  end

  def current_sprint
    self.sprints.where(:active => true).last
  end

  protected

  def create_sprint_zero
    self.sprints.create
  end
end
