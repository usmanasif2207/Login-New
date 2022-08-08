class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :bug_type
      t.string :bug_status
      t.string :feature_status
      t.datetime :deadline
      t.integer :project_id
      t.integer :created_by_id
      t.integer :solved_by_id
      t.timestamps
    end
  end
end
