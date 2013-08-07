class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.references :user
      t.string :job_url
      t.string :resume_url
      t.text :description
      t.string :time

      t.timestamps
    end
  end
end
