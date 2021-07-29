class Product < ApplicationRecord
  MATERIALS = ['Natural Textils', 'Leather', 'Paper', 'cotton', 'Reclaimed Wood', 'Metal', 'Bamboo', 'Plastic', 'Cork', 'Sheep Wool', 'Straw Bales', 'Recycled Rubber', 'Natural Textiles'].sort

  has_many_attached :photos
  belongs_to :user
  has_many :listings, dependent: :destroy
  has_many :reviews

  scope :top_sellers_by_quantity, ->(user) { 
    where(user: user)
      .joins(:listings)
      .joins(:purchases)
      .group(:id)
      .order('sum(purchases.quantity) desc') 
  }

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
