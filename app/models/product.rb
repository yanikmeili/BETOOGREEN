class Product < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :listings
  has_many :reviews
end
