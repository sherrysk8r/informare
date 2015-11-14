class UsersController < ApplicationController
  #authorize_resource
  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to game_path
    else
      render action: "new"
    end
  end

  def update
    @user = @current_user
    if @user.update_attributes(user_params)
      redirect_to(@user, notice: 'User was successfully updated.')
    else
      render action: "edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end