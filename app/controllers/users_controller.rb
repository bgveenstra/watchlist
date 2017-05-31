class UsersController < ApplicationController
  before_action :check_user

  private
  def check_user
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to root_url
    end
  end
end
