class PhotoPolicy < ApplicationPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  def show?
    user == photo.owner || photo.owner.leaders.include?(user)
  end

  def edit?
    user == photo.owner
  end

  def create?
    true
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end


end