class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  before_action { authorize @user || User }


  def show
  end

  def liked
  end

  def feed
  end

  def followers
  end


  def following
  end

  def discover
  end


  private

  def set_user
    if params[:username]
      @user = User.find_by!(username: params.fetch(:username))
    else
      @user = current_user
    end
  end

end