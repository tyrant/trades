class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    
    if user.admin? # Not implemented yet!
      can :manage, :all
    else
      
      cannot :manage, :all
      
      if user.instance_of? Trader
      
        can :read, Customer

        can :read, Trader        
        can :update, Trader do |trader|
          trader == user
        end
        
        can :create, Address
        can [:read, :update, :destroy], Address do |address|
          user.addresses.contains? address
        end

        can :read, Business do |business|
          user.business = business
        end

        can [:create, :read], Profession

        cannot :manage, Job
        can :read, Job
        
        can [:create, :read], Quote
        can [:update, :destroy], Quote do |quote|
          quote.trader == user
        end

        can [:create, :read], Image
        can [:update, :destroy], Image do |image|
          image.imageable.trader == user
        end

        can [:create, :read], Video
        can [:update, :destroy], Video do |video|
          video.videoable.trader == user
        end

        can :read, Review
        can [:create, :update], Review do |review|
          review.reviewable.instance_of? Quote
        end
        can :destroy, Review do |review|
          review.reviewer == user
        end
        
      elsif user.instance_of? Customer
        
        can [:create, :read], Customer
        
        can [:update, :destroy], Customer do |customer|
          user == customer
        end
        
        can [:create, :read], Trader
        
        can [:create, :read], Address
        can [:update, :destroy], Address do |address|
          user.addresses.include? address
        end
        
        can :read, Business
        
        can :read, Profession
        
        can [:create, :read], Job
        can [:update, :destroy], Job do |job|
          user == job.customer
        end
        
        can :read, Quote
        
        can [:create, :read], Image
        can [:update, :destroy], Image do |image|
          image.imageable.instance_of? Customer and image.imageable.customer == user
        end
        
        can [:create, :read], Video
        can [:update, :destroy], Video do |video|
          video.videoable.instance_of? Customer and video.videoable.customer == user
        end
        
        can [:create, :read], Review
        can [:update, :destroy], Review do |review|
          review.reviewer == user
        end
        
      end
    end
  end
end
