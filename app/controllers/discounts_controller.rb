class DiscountsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @discount = Discount.new
  end

  def create
    @discount = Discount.new(discount_params)
    @listing = Listing.find(params[:listing_id])
    @discount.listing = @listing
    if @discount.save!
      redirect_to listing_path(@listing), data: {turbolinks: false }
    else
      render :new
    end
  end

  private

  def discount_params
    params.require(:discount).permit(:quantity, :price)
  end
end
