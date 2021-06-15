class Discount < ApplicationRecord
  belongs_to :listing # @discount.listing => devuelve instance of listing
end
