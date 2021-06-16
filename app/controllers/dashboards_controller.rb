class DashboardsController < ApplicationController
  def show
    @user = current_user
    @products = current_user.products
  end
end
