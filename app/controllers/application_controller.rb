class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end

  
  # Devise workarounds
  
  def authenticate_user!
    begin
      authenticate_customer!
    rescue
      authenticate_trader!
    end
  end
  
  def user_signed_in?
    begin
      return customer_signed_in?
    rescue
      return trader_signed_in?
    end
  end
  
  def current_user
    begin
      return current_customer
    rescue
      return current_trader
    end
  end
  
  def user_session
    begin
      return customer_session
    rescue
      return trader_session
    end
  end
  
end
