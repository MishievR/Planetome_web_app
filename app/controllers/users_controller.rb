class UsersController < ApplicationController


  def index
   @users = User.all
  end



  def show
    @user = User.find(current_user)
    @user_listings = @user.listings.paginate(page: params[:page], per_page: 5)
  end




end
