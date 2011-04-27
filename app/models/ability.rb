class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= User.new
    if false #user.admin? # Not implemented yet!
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

        can :read, Job
        
        can [:create, :read], Quote
        can [:update, :destroy], Quote do |quote|
          quote.trader == user
        end

        can [:create, :read], Image
        can [:update, :destroy] Image do |image|
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
          current_user == customer
        end
        
        can [:create, :read], Trader
        
        can [:create, :read], Address
        can [:update, :destroy], Address do |address|
          current_user.addresses.include? address
        end
        
        can :read, Business
        
        can :read, Profession
        
        can [:create, :read], Job
        can [:update, :destroy], Job do |job|
          current_user == job.customer
        end
        
        can :read, Quote
        
        can [:create, :read], Image
        can [:update, :destroy], Image do |image|
          image.imageable.instance_of? Customer and image.imageable.customer == current_user
        end
      end
    end
  end
end
