class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render "jobs/index"
  end
end
