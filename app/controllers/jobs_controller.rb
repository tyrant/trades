class JobsController < ApplicationController

  # Job search options: by trader name, by trader profession, by address ()
  def index 
    @jobs = Job.where(true)
    
  end

  def show
    @job = Job.find(params[:id])
    # if @job.title != params[:title]
    #   redirect_to root_path, :notice => "Title doesn't match ID"
    # end
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
        @job.set_images(params[:image_tokens]) if params.has_key? 'image_tokens'
        format.js { render 'ajax_create_success.js', :layout => false }
        format.html { redirect_to @job, :notice => "New job created" }
      else
        format.js { render 'ajax_create_fail.js', :layout => false }
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
        format.json { render :json => @job }
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
