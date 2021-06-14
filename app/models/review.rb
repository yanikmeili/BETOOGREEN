class Review < ApplicationRecord
  before_validation :set_product

  belongs_to :product
  belongs_to :purchase

  private

  def set_product
    self.product = purchase.listing.product
  end
end
