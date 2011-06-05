class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end

  
  # Devise workarounds
  helper_method :'user_signed_in?', :current_user, :user_session
  helper_method :destroy_user_session_path, :new_user_registration_path
  helper_method :new_user_session_path
  
  def authenticate_user!
    user_a?('customer') ? authenticate_customer! : authenticate_trader!
  end
  
  def user_signed_in?
    user_a?('customer') ? customer_signed_in? : trader_signed_in?
  end
  
  def current_user
    user_a?('customer') ? current_customer : current_trader
  end
  
  def user_session
    user_a?('customer') ? customer_session : trader_session
  end
  
  def destroy_user_session_path
    user_a?('customer') ? destroy_customer_session_path : destroy_trader_session_path
  end
  
  def new_user_registration_path
    user_a?('customer') ? new_customer_registration_path : new_trader_registration_path
  end
  
  def new_user_session_path
    user_a?('customer') ? new_customer_session_path : new_trader_session_path
  end
  
  def user_a?(type)
    request.env['warden'].authenticate!(:scope => type)
  end
end
