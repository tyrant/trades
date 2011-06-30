module ApplicationHelper


  # parse request.url into a nice usable breadcrumbs string.
  def breadcrumbs
  
  end

  def user_is?(classname)
    current_user.instance_of? classname
  end
 
end
