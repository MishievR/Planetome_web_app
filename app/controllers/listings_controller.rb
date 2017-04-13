class ListingsController < ApplicationController
  before_action :set_listing, only: [:edit, :update, :show, :destroy]

  def index
    @listings = Listing.paginate(page: params[:page], per_page: 5)
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = User.find(10)
    if @listing.save
      flash[:success] = "Listing was successfully created"
      redirect_to listing_path(@listing)
    else
      render 'new'
    end
  end

  def show
  end

  def destroy

    @listing.destroy
    flash[:danger] = "Article was successfully deleted"
    redirect_to listings_path
  end

  def update

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

    def set_listing
      @listing = Listing.find(params[:id])
    end

end
