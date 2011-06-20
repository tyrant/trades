class ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    if @image.save
      render :inline => "<%= @image.path(:medium) %>"
    else
      render :inline => "<%= @image.errors.to_json %>"
    end
  end
  
end
