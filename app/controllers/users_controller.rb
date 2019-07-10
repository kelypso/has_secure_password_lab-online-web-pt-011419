class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    return redirect_to(controller: 'sessions', action: 'new')
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
