class CompaniesController < ApplicationController

  def index
    @companies = Company.all.sort
    render "companies/index"
  end

  def show
    @company = Company.find_by(id: params[:id])
    render "companies/show"
  end
end
