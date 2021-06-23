class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    params[:product][:material] = params[:product][:material].drop(1).join(", ")
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save!
      redirect_to new_product_listing_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :material, :impact, :origin, photos: [])
  end
end
