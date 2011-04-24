class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_customer!
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end

end
