class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    if @user.save
      flash[:success]= "Welcome to the Planetome, #{@user.username}!"
      redirect_to listings_path
    else
      render 'new'
    end
  end

  private
  def user_param
    params.require(:user).permit(:username, :email, :password)
  end


end
