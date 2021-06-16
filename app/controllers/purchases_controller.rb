class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.listing = Listing.find(params[:listing_id])
    @purchase.user = current_user
    if @purchase.save!
      redirect_to listing_path(@purchase.listing)
    else
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quantity)
  end
end
