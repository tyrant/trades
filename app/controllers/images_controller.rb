class ImagesController < ApplicationController
  
  def create
    @image = Image.new(params[:image])
    if @image.save
      render :json => {
        'thumb' => @image.path(:thumb),
        'original' => @image.path(:original)
      }
    else
      render :inline => "<%= @image.errors.to_json %>"
    end
  end
  
end
