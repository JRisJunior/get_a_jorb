class CompaniesController < ApplicationController

  def index
    @companies = Company.all.sort
    render "companies/index"
  end

  def show
    @company = Company.find_by(id: params[:id])
    @jobs_by_company = Job.where(company_id: @company.id)
    render "companies/show"
  end
end
