class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  def purchase_date_string
    created_at.strftime('%b %d, %Y')
  end

  def total_price
    listing.current_price * quantity
  end
end
