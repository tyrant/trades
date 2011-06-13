class ReviewsController < ApplicationController

  before_filter :authenticate_user!


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
  def create
    @review = Review.new(params[:review])

    respond_to do |format| 
      if @review.save
        format.html { redirect_to @review, :notice => "Successfully created a new review" }
        format.js { render js_root + 'reviews/ajax_create_success.js', :layout => false }
      else
        format.js { render js_root + 'reviews/ajax_create_fail.js', :layout => false }
      end
    end
  end
  
  
  # Grab the HTML for a trader review.
  def new_trader_review
    
  
  end
  
  # Create a new trader review.
  def create_trader_review
  
  end
end
