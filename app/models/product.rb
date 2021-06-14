class Product < ApplicationRecord
  belongs_to :user
  has_many :listings
  has_many :reviews
end
