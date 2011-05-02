class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end

  
  # Devise workarounds
  helper_method :user_signed_in_questionmark, :current_user, :user_session, :destroy_user_session_path, :new_user_registration_path, :new_user_session_path
  
  def authenticate_user!
    begin
      authenticate_customer!
    rescue
      authenticate_trader!
    end
  end
  
  def user_signed_in_questionmark
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
  
  def destroy_user_session_path
    begin
      return destroy_customer_session_path
    rescue
      return destroy_trader_session_path
    end
  end
  
  def new_user_registration_path
    begin
      return new_customer_registration_path
    rescue
      return new_trader_registration_path
    end
  end
  
  def new_user_session_path
    begin
      return new_customer_session_path
    rescue
      return new_trader_session_path
    end
  end
  
end
