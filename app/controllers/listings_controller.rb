class ListingsController < ApplicationController
  def index
    # TODO: scope to only show active listings
    # TODO: We can only do one listing for one product at the time
    if params[:query].present?
      @listings = Listing.global_search(params[:query])
    else
      @listings = Listing.all
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @purchase = Purchase.new
  end

  def new
    @listing = Listing.new
    @product = Product.find(params[:product_id])
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.product = Product.find(params[:product_id])
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
