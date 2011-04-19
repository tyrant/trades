class TradersController < ApplicationController

  # Responds to the Ajax-based Find Trader form on the Reveiew page (for starters)
  def find
    puts "PARAMS: #{params.inspect}"
    @traders = Trader.where("name LIKE ?", "%#{params[:trader_text]}%").paginate(:page => params[:page])
    render :json => @traders.to_json
  end

  def new
    @trader = Trader.new
  end

  def create
    @trader = Trader.new(params[:trader])
    respond_to do |format|
      if @trader.save
        format.html { redirect_to @trader, :notice => "Successfully created a new Trader." }
        format.json { render :json => @trader, :status => :created, :location => @trader }
      else

      end
    end
  end    
end
