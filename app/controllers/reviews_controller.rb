class ReviewsController < ApplicationController
  
  # Review searches:
  # Filter by reviewable_type (Job, Trader, Business, Quote), location if job, content text.
  def index
    @reviews = Review.where(1)
    @reviews = @reviews.where("reviewable_type = ?", params[:reviewable_type]) if params[:reviewable_type] && params[:reviewable_type] != 'All'
    @reviews = @reviews.where("reviewer_type = ?", params[:reviewer_type]) if params[:reviewer_type] && params[:reviewer_type] != 'All'
    @reviews = @reviews.where("title LIKE ? OR description LIKE ?", "%#{params[:text]}%", "%#{params[:text]}%") if params[:text]
    respond_to do |format|
      format.json { render 'ajax_search.js', :layout => false }
      format.html
    end
  end
  
  def show 
    @review = Review.find(params[:id])
  end

  def new
    @trader = Trader.new
    @job = Job.new
    @review = Review.new
    @professions = Profession.all
    @cities = City.all
    
    @title = 'Quick Review'

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
  
  def update
    @review = Review.find(params[:id])
    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.json { render :json => @review }
        format.html { redirect_to @review, :notice => "This review has been updated" }
      else
        format.json { render :json => @review.errors }
        format.html { render :action => "edit" }
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
