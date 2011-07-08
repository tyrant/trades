module ReviewsHelper
  
  # A bit of polymorphism would go a long way here. TODO find out if extending relevant base classes plays nicely with ActiveRecord.
  
  def reviewable_path(reviewable)
    if reviewable.instance_of? Job
      return job_path(reviewable)
    elsif reviewable.instance_of? Trader
      return trader_path(reviewable)
    elsif reviewable.instance_of? Quote
      return quote_path(reviewable)
    elsif reviewable.instance_of? Business
      return business_path(reviewable)
    end
  end
  
  def reviewer_path(reviewer)
    if reviewer.instance_of? Customer
      return customer_path(reviewer)
    elsif reviewer.instance_of? Trader
      return trader_path(reviewer)
    end
  end
  
  def reviewable_name(reviewable)
    if reviewable.instance_of? Job
      return reviewable.title
    elsif reviewable.instance_of? Trader
      return reviewable.name
    elsif reviewable.instance_of? Quote
      return reviewable.title
    elsif reviewable.instance_of? Business
      return reviewable.name
    end
  end
  
  def reviewer_name(reviewer)
    puts reviewer
    if reviewer.instance_of? Customer
      return reviewer.email
    elsif reviewer.instance_of? Trader
      return reviewer.name
    end
  end
end
