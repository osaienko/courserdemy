class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    if @user
      @user.has_role?(:admin)
      @user.has_role?(:admin) || @record.user_id == @user.id
    end
  end

  def update?
    if @user
      @user.has_role?(:admin) || @record.user_id == @user.id
    end
  end

  def new?
    if @user
      @user.has_role?(:teacher)
    end
  end

  def create?
    if @user
      @user.has_role?(:teacher)
    end
  end

  def destroy?
    if @user
      @user.has_role?(:admin) || @record.user_id == @user.id
    end
  end
end