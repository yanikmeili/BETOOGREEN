class ListingsController < ApplicationController
  def index
    # TODO: scope to only show active listings
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
    @product = get_listing_product(@listing)
  end
end
