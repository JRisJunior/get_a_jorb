class JobsController < ApplicationController
  def index
    if params[:search]
      @jobs = Job.where("title iLIKE ?", "%" + params[:search] + "%")
    else
      @jobs = Job.all.sort
    end
    render "jobs/index"
  end
  
  def show
    @job = Job.find_by(id: params[:id])
    render "jobs/show"
  end
  
  def new
    @job = Job.new
    if current_user && current_user.admin_level == true
      render "jobs/new"
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
        salary_range: params[:job][:salary_range],
        company_id: params[:job][:company_id]
      )
      if @job.save
        tags = params[:job][:tag_id]
        parsed_tags = tags.split(',')
        parsed_tags.each do |tag|
          job_post_tags = JobPostTag.new(
            job_id: @job.id,
            tag_id: tag
          )
          job_post_tags.save
        end
        redirect_to "/jobs"
      else
        render html: "Your job did not save correctly. Please try again."
      end
    else
      render html: "WHAT ARE YOU DOING HERE"
    end
  end
end
