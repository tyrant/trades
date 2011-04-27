class ReviewsController < ApplicationController


  # Grab the HTML for a job review.
  def new_job_review
    @trader = Trader.new
    @job = Job.new
    @review = Review.new

    respond_to do |format|
      format.html
    end 
  end
  
  # Create a new job review.
  def create_job_review
    @review = Review.create(params[:review])
    respond_to do |format|
      format.html { redirect_to @review, :notice => "Successfully created a new review" }
    end
  end
  
  
  # Grab the HTML for a trader review.
  def new_trader_review
    
  
  end
  
  # Create a new trader review.
  def create_trader_review
  
  end
end
