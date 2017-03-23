json.extract! job, :id, :job_title, :job_location, :job_category, :job_industry, :job_funcarea, :job_salmin, :job_salmax, :job_yrsofexpmin, :job_yrsofexpmax, :job_coursetype, :job_gradeyrmin, :job_gradeyrmax, :job_jobdesc, :created_at, :updated_at
json.url job_url(job, format: :json)
