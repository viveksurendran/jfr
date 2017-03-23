class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :job_location
      t.string :job_category
      t.string :job_industry
      t.string :job_funcarea
      t.integer :job_salmin
      t.integer :job_salmax
      t.string :job_yrsofexpmin
      t.string :job_yrsofexpmax
      t.string :job_coursetype
      t.string :job_gradeyrmin
      t.string :job_gradeyrmax
      t.text :job_jobdesc

      t.timestamps
    end
  end
end
