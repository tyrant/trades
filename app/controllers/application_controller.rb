class ApplicationController < ActionController::Base

  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |e|
    redirect_to root_url, :alert => e.message
  end
  
  # Pre-controller params massages.
  before_filter do
  
    if params['controller'] == 'images' && params['action'] == 'create'
    
      # Re-mould params from what Uploadify supplies it as, to what Paperclip expects it as.
      params[:image] = {}
      params[:image][:token] = params[:token]
      params[:image][:image] = params['Filedata']
      params.delete 'Filedata'
      params.delete 'token'
      
    elsif params['controller'] == 'reviews' && params['action'] == 'create'
    
      params[:reviewable_type] = params[:review].delete 'reviewable_type' if params.has_key? 'review'
      params[:reviewable_id] = params[:review].delete 'reviewable_id' if params.has_key? 'review'
      
    elsif params['controller'] == 'jobs' && params['action'] == 'create'
    
      params[:image_tokens] = params[:job].delete 'image_tokens' if params.has_key? 'job'
      
    elsif params['controller'] == 'traders' && params['action'] == 'request_trader'
      
      # Aren't hacks fun? 'review_reviewable_id', because that's what's in jobs/ajax_create_success.js.
      params[:job_id] = params.delete 'review_reviewable_id'
      
    end
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
  
  # See https://github.com/plataformatec/devise/blob/master/lib/devise/controllers/helpers.rb
  # and look at the method signed_in? to see what's what.
  def user_a?(type)
    request.env['warden'].authenticate?(:scope => type)
  end
end
