class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      flash[:success] = "Listing was successfully created"
      redirect_to listing_path(@listing)
    else
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to listings_path
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      flash[:success] = "Listing updated succcessfully"
      redirect_to listing_path(@listing)
    else
      render 'edit'
    end
  end

  private
    def listing_params
      params.require(:listing).permit(:title, :description)
    end

end
