class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      user = User.new
    end

    if user.has_role? :admin
      can :manage, :all    
    elsif user.has_role? :supervisor
      can [:create, :read, :edit, :rejected, :approve], Ticket   
    elsif user.has_role? :operator
      can [:create, :read, :destroy], Ticket, user_id: user.id 
    end      
  end
end


