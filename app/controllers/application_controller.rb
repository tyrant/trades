class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_customer!
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end

  
  # Devise workarounds
  
  #def current_user
  #  return current_trader if defined?(current_trader)
  #  return current_customer if defined?(current_customer)
  #  nil
  #end

  #def authenticate_user!
  #  authenticate_trader! if defined?(authenticate_trader!)
  #  authenticate_customer! if defined?(authenticate_customer!)
  #  nil
  #end    
end
