class JobsController < ApplicationController

  def create
    @job = Job.new(params[:job])
    @job.customer = current_customer
    respond_to do |format|
      if @job.save
        format.json { render :json => @job.as_json }
        format.html
      else
      end
    end
  end
  
end
