class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to '/'
    end
  end

end
