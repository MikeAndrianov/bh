class CompaniesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @companies = Company.all

    respond_to do |format|
      format.json { render json: @companies, includes: ['quests'] }
    end
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.json { render json: @company }
      else
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    company = Company.find(params[:id])
    if company.update(company_params)
      render json: company, status: 200
    else
      render json: company.errors, status: 422
    end
  end

  private
  
  def company_params
    params.require(:company).permit! #(:title, :description)
  end 
end
