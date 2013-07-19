class CompaniesController < ApplicationController
  # GET /companies
  # GET /companies.json
  before_filter :authenticate_user!, :except => [:index, :show]
  layout 'companies', :only => [:index, :show]

  def index
    binding.pry
    @companies = Company.search(params[:search])
    @json = Company.search(params[:search]).to_gmaps4rails
    @categories = Category.includes(:companies).all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @companies }
    end
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @company = Company.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @company }
    end
  end

  # GET /companies/new
  # GET /companies/new.json
  def new
    @company = Company.new
    2.times { @company.pictures.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @company }
    end
  end

  # GET /companies/1/edit
  def edit
    @company = Company.find(params[:id])
    (2 - @company.pictures.length).times { @company.pictures.build }
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(params[:company])

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, :notice => 'Company was successfully created.' }
        format.json { render :json => @company, :status => :created, :location => @company }
      else
        format.html { render :action => "new" }
        format.json { render :json => @company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /companies/1
  # PUT /companies/1.json
  def update
    @company = Company.find(params[:id])

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to @company, :notice => 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_url }
      format.json { head :no_content }
    end
  end
end
