class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render "jobs/index"
  end
  
  def show
    @job = Job.find_by(id: params[:id])
    @jobs_by_company = Job.where(company_id: @job.company_id)
    render "jobs/show"
  end
end
