class InterestsController < ApplicationController

  def index
    @interests = Interest.all
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      flash[:success] = "Interest was created succesfully"
      redirect_to interests_path
    else
      render 'new'
    end
  end

  def show
    @interest = Interest.find(params[:id])
  end



  private
  def interest_params
    params.require(:interest).permit(:name, :description)
  end

end
