class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
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
      redirect_to new_listing_discount_path(@listing)
    else
      render :new
    end
  end

  def update
    @listing = Listing.find(params[:id])
    # belongs_to @listing.build_product

    @listing.assign_attributes(listing_params)
    @listing.save!
    redirect_to listing_path(@listing)
  end

private

  def listing_params
    params.require(:listing).permit(:stock, :max_price, :min_price, :end_date, discounts_attributes: [:quantity, :price])
  end
end
