class RenameCulumTypeInFeedbacks < ActiveRecord::Migration
  def up
    rename_column :feedbacks, :type, :nice
  end

  def down
    rename_column :feedbacks, :nice, :type
  end
end
