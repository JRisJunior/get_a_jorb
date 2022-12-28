class JobsController < ApplicationController
  def index
    if params[:search]
      @jobs = Job.where("title iLIKE ?", "%" + params[:search] + "%")
    else
      @jobs = Job.all
    end
    render "jobs/index"
  end
  
  def show
    @job = Job.find_by(id: params[:id])
    @jobs_by_company = Job.where(company_id: @job.company_id)
    render "jobs/show"
  end
  
  def new
    @job = Job.new
    if current_user && current_user.admin_level == true
      render "jobs/admins/new"
    else
      render html: "You cannot access this page without being an admin."
    end
  end
  
  def create
    if current_user && current_user.admin_level == true
      @job = Job.new(
        title: params[:job][:title],
        description: params[:job][:description],
        url: params[:job][:url],
        location: params[:job][:location],
        active: true,
        salary_range: params[:job][:salary_range]
      )
      if @job.save
        redirect_to "/jobs/"
      else
        render html: "Your job did not save correctly. Please try again."
      end
    end
  end
end
