class ReviewsController < ApplicationController
  
  # Review searches:
  # Filter by reviewable_type (Job, Trader, Business, Quote), location if job, content text.
  def index
    @reviews = Review.all
  end

  def new
    @trader = Trader.new
    @job = Job.new
    @review = Review.new

    respond_to do |format|
      format.html { render 'new_job_review' }
    end 
  end
  
  # Create a new job review.
  def create
    puts params.inspect
    @review = Review.new(params[:review])
    @review.set_reviewable(params[:reviewable_type], params[:reviewable_id])
    respond_to do |format| 
      if @review.save
        format.html { redirect_to @review, :notice => "Successfully created a new review" }
        format.js { render 'ajax_create_success.js', :layout => false }
      else
        format.js { render 'ajax_create_fail.js', :layout => false }
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
