class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.references :project,   :null => false
      t.integer    :iteration, :null => false, :default => 0
      t.boolean    :active,    :null => false, :default => true

      t.timestamps
    end
    add_index :sprints, :project_id
  end
end
