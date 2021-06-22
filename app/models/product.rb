class Product < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :listings
  has_many :reviews


# can be refactored with a #reduce or AR
  def total_sellings_quantity
    sum = 0
    self.listings.each do |listing|
      sum += listing.quantity_sold
    end
    return sum
  end

  def total_sellings_value
    sum = 0
    self.listings.each do |listing|
      sum += listing.total_sales
    end
    return sum
  end


end
