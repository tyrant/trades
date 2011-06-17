class ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    respond_to do |format|
      if @image.save
        format.html { render :json => @image.path(:medium) }
      else
        format.html { render :json => @image.errors }
      end
    end
  end
  
end