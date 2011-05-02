class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end
  
  def new
    @job = Job.new
    @job.address = Address.new
  end

  def create
    @job = Job.new(params[:job])
    @job.customer = current_user
    respond_to do |format|
      if @job.save
        format.json { render :json => @job.to_json }
        format.html { redirect_to @job, :notice => "New job created" }
      else
        format.json { render :json => @job.errors }
        format.html { render :action => "new" }
      end
    end
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job = Job.find(params[:id])
    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.json { render :json => @job.to_json }
        format.html { redirect_to @job, :notice => "This job has been updated" }
      else
        format.json { render :json => @job.errors }
        format.html { render :action => "edit" }
      end
    end
  end
  
  def review
    @trader = Trader.new
    @job = Job.new
    @review = Review.new

    respond_to do |format|
      format.html
    end   
  end
end
