class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products
  has_many :purchases
  has_many :reviews
  has_many :listings, through: :products

  def short_email
    self.email.split('@')[0].capitalize
  end

  def top_sales
    products.sort_by { |product| - product.total_sellings_value }
  end

  def chart_hash
    value_data = top_sales.first(8).map { |prod| prod.total_sellings_value.to_i }
    value_labels = top_sales.first(8).map { |prod| prod.name + " € " }
    {
      labels: value_labels,
      datasets: [{
        label: 'My First Dataset',
        data: value_data,
        backgroundColor: [
          'rgb(241, 196, 83)',
          'rgb(239, 234, 90)',
          'rgb(185, 231, 105)',
          'rgb(131, 227, 119)',
          'rgb(22, 219, 147)',
          'rgb(13, 179, 158)',
          'rgb(4, 139, 168)',
          'rgb(44, 105, 154)'
        ],
        hoverOffset: 4
      }]
    }
  end
end
