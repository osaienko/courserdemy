class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    if @user
      @user.has_role?(:admin)
    end
  end

  def update?
    if @user
      @user.has_role?(:admin)
    end
  end
end