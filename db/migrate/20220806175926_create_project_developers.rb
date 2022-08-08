class CreateProjectDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :project_developers do |t|
      t.integer :project_id
      t.integer :dev_id

      t.timestamps
    end
  end
end
