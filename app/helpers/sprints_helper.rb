module SprintsHelper

  def goods_and_bad_feedbacks(sprint)
    Feedback.where(:sprint_id => sprint.id).select([:nice]).group(:nice).count
  end

end
