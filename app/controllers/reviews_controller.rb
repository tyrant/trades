class ReviewsController < ApplicationController

  respond_to :html, :json

  def new
    @review = Review.new
    respond_to do |format|
      format.html
    end 
  end

  def create
    @review = Review.create(params[:review])
    respond_with @review, :location => reviews_url
  end
  
end
