class ImagesController < ApplicationController
  
  def create
    puts "CREATING IMAGE WITH: #{params.inspect}"
    
    @image = Image.new(params[:image])
    respond_to do |format|
      if @image.save
        format.html { render :json => @image.to_json }
      else
        format.html { render :json => @image.errors }
      end
    end
  end
  
end