class LessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    if @user
      @record.course.user_id == @user.id
    end
  end

  def show?
    if @user
      # bought the course? Also allow this in the future
      @user.has_role?(:admin) || @record.course.user_id == @user.id
    end
  end

  def update?
    if @user
      @record.course.user_id == @user.id
    end
  end

  def new?
    if @user
      # @user.has_role?(:teacher)
    end
  end

  def create?
    if @user
      # @user.has_role?(:teacher)
    end
  end

  def destroy?
    if @user
      @record.course.user_id == @user.id
    end
  end
end