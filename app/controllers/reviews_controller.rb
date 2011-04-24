class ReviewsController < ApplicationController


  def new
    @trader = Trader.new
    @job = Job.new
    @review = Review.new

    respond_to do |format|
      format.html
    end 
  end

  
  def create
    @review = Review.create(params[:review])
    respond_to do |format|
      format.html { redirect_to @review, :notice => "Successfully created a new review" }
    end
  end
  
end
