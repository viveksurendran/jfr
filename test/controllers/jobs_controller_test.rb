require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { job_category: @job.job_category, job_coursetype: @job.job_coursetype, job_funcarea: @job.job_funcarea, job_gradeyrmax: @job.job_gradeyrmax, job_gradeyrmin: @job.job_gradeyrmin, job_industry: @job.job_industry, job_jobdesc: @job.job_jobdesc, job_location: @job.job_location, job_salmax: @job.job_salmax, job_salmin: @job.job_salmin, job_title: @job.job_title, job_yrsofexpmax: @job.job_yrsofexpmax, job_yrsofexpmin: @job.job_yrsofexpmin } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { job_category: @job.job_category, job_coursetype: @job.job_coursetype, job_funcarea: @job.job_funcarea, job_gradeyrmax: @job.job_gradeyrmax, job_gradeyrmin: @job.job_gradeyrmin, job_industry: @job.job_industry, job_jobdesc: @job.job_jobdesc, job_location: @job.job_location, job_salmax: @job.job_salmax, job_salmin: @job.job_salmin, job_title: @job.job_title, job_yrsofexpmax: @job.job_yrsofexpmax, job_yrsofexpmin: @job.job_yrsofexpmin } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
