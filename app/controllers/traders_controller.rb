class TradersController < ApplicationController

  before_filter :authenticate_user!

  def index
    @traders = Trader.where(:sprightly => true)
  end
  
  def show
    @trader = Trader.find(params[:id])
    if !@trader.sprightly?
      redirect_to(traders_path, :notice => "This trader's profile is inactive right now.") and return
    else
      # Grab the five highest reviews this Trader's received for their work
      @job_reviews = Review.find_by_sql("SELECT * FROM reviews r INNER JOIN jobs j ON r.reviewable_id=j.id INNER JOIN traders t ON j.trader_id=t.id ORDER BY r.mark DESC LIMIT 5")
      # Grab the five highest reviews this Trader's received for themselves
      @self_reviews = Review.find_by_sql("SELECT * FROM reviews r INNER JOIN traders t ON r.reviewable_id=t.id ORDER BY r.mark DESC LIMIT 5")
    end
  end

  # Responds to the Ajax-based Find Trader form on the Review page (for starters)
  def find
    t = "%#{params[:trader_text]}%"
    @traders = Trader.where("first_name LIKE ? OR last_name LIKE ?", t, t).paginate(:page => params[:page])
    if @traders.length > 0
      render :json => @traders.to_json
    else
      render :json => [{'id' => 0, 'name' => 'No traders match your search.'}].to_json
    end
  end

  def new
    @trader = Trader.new
  end

  # Trader Creation:
  # This involves one of three actions.
  #   (1) A customer creates a new inactive Trader instance: Customers, when Reviewing a Job, need to select a Trader
  #       for this, and if the Trader in question isn't yet on the site, they can create a new, inactive Trader instance.
  #       This instance creates a temporary login and plaintext password, to be sent to the Trader in question, should 
  #       the flesh-and-blood Trader view the site, see they're being talked about, say "now just a cotton-pickin' minute",
  #       and demand to take control of this Trader model. For more on the mechanics of that, see (3). Here, though, the
  #       following fields need setting: self.active = false, self.login = [six random characters], self.password = 
  #       [six random characters], and self.question = [whatever question the customer writes].
  #   (2) A user (a real-life trader) creates a new Trader profile for themselves. Standard Rails stuff.
  #   (3) (Not Trader#create, but relevant) A user holds the opinion that they're the Trader being discussed on the site, 
  #       and asserts as much. This is handled by the Customer who created the Trader instance also adding a secret question
  #       that, presumably, only the Trader knows, so that the Trader can then answer it. The possible-Trader's answer will
  #       be emailed to the Customer, who then confirms or denies the question's correctness. If it's right, the trader will 
  #       then be asked for an email/password, the temporary ones will be wiped, the 'sprightly' flag will be set to True,
  #       and then they can behave, on the site, as the Trader in question.
  
  def create
    @trader = Trader.new(params[:trader])
    
    respond_to do |format|
      if @trader.save
        format.html { redirect_to @trader, :notice => "Successfully created a new Trader." }  
        format.json { render :json => @trader.to_json }
      end
    end
  end    

  def edit

  end

  def update
    @trader = Trader.find(params[:trader])
    if @trader.active? # and @trader.update_attributes ...
    
    else
    
    end
  end

  def verify

  end
end
