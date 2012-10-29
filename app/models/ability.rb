class Ability
  include CanCan::Ability

  def initialize(user)
    @user = (user ||= User.new)
    send(@user.role) if @user.role
    can [:read, :about, :inside, :why, :order], Page
  end

  def admin
    can :manage, :all
  end

  def member
    can [:read, :update], User, :id => @user.id
  end
end
