class ListingsController < ApplicationController
  def index
    # TODO: scope to only show active listings
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
    @product = Product.find(params[:product_id])
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.product = Product.find(params[:id])
    if @listing.save!
      redirect_to listing_path(@listing)
    else
      render :new
    end
  end

private

  def listing_params
    params.require(:listing).permit(:stock, :max_price, :min_price, :end_date)
  end
end
