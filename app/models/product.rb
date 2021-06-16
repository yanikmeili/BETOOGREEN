class Product < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :listings
  has_many :reviews
end
