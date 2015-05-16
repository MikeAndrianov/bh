class CompaniesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  def index
    @companies = Company.all

    respond_to do |format|
      format.html { render html: @companies }
      format.json { render json: @companies }
    end
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'company was successfully created.' }
        format.json { render json: @company }
      else
        format.html { render action: 'new' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
end
