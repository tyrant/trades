class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end
  
  def show
    @quote = Quote.find(params[:id])
  end
  
  def new
    if !params.has_key? 'job'
      redirect_to(quotes_path, :notice => 'No Job ID supplied in the URL') and return
    end
    @quote = Quote.new
    @job = Job.find(params[:job])
  end
  
  def create
    @quote = Quote.new(params[:quote])
    respond_to do |format|
      if @quote.save
        format.html { redirect_to quotes_path, :notice => 'New quote created!' }
        format.json { render :json => @quote.to_json }
      else
        format.html { render :action => 'new' }
        format.json { render :json => @quote.errors }
      end
    end
  end
  
  def edit
    @quote = Quote.find(params[:id])
  end
  
  def update
    @quote = Quote.find(params[:id])
    respond_to do |format|
      if @quote.update_attributes(params[:quote])
        format.html { redirect_to @quote, :notice => 'Quote updated!' }
        format.json { render :json => @quote.to_json }
      else
        format.html { render :action => :edit }
        format.json { render :json => @quote.errors }
      end
    end
  end
  
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to quotes_path, :notice => 'Quote deleted'
  end
end
