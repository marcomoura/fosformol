class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.text       :description, :null => false
      t.boolean    :type,        :null => false
      t.references :sprint,      :null => false

      t.timestamps
    end
    add_index :feedbacks, :sprint_id
  end
end
