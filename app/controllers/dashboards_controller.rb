class DashboardsController < ApplicationController
  def show
    @user = current_user
    @products = current_user.products
    @listings = current_user.listings
    @purchases = current_user.purchases
  end
end
