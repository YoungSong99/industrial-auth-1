class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    comment.author == user
  end

  def destroy?
    comment.author == user
  end
end
