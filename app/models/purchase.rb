class Purchase < ApplicationRecord
  monetize :amount_cents
  belongs_to :user
  belongs_to :listing
  before_create :set_amount
  has_many :reviews, dependent: :destroy

  def purchase_date_string
    created_at.strftime('%b %d, %Y')
  end

  def total_price
    listing.current_price * quantity
  end

  def set_amount
    self.amount = total_price
  end
end
