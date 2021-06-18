class DashboardsController < ApplicationController
  def show
    @user = current_user
    @products = current_user.products
    @listings = current_user.listings
    @purchases = current_user.purchases
    @open_listings = set_open
    @closed_listings = set_closed
  end

  private

  def set_open
    @listings.select { |listing| listing.end_date >= Date.today }
  end

  def set_closed
    @listings.select { |listing| listing.end_date < Date.today }
  end
end
