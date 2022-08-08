class CreateProjectQas < ActiveRecord::Migration[7.0]
  def change
    create_table :project_qas do |t|
      t.integer :project_id
      t.integer :qa_id

      t.timestamps
    end
  end
end
