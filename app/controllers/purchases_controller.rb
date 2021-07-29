class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.listing = Listing.find(params[:listing_id])
    @purchase.user = current_user
    if @purchase.save!
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @purchase.listing.product.name,
          images: [Cloudinary::Utils.cloudinary_url(@purchase.listing.product.photos.first.key)],
          amount: @purchase.amount_cents,
          currency: 'eur',
          quantity: 1
        }],
        success_url: purchase_url(@purchase),
        cancel_url: purchase_url(@purchase)
      )
      @purchase.update(checkout_session_id: session.id)
      redirect_to new_purchase_payment_path(@purchase)
    else
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quantity)
  end
end
