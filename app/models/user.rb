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
    value_labels = top_sales.first(8).map { |prod| prod.name }
    {
      labels: value_labels,
      datasets: [{
        label: 'My First Dataset',
        data: value_data,
        backgroundColor: [
          'rgb(255, 99, 132)',
          'rgb(54, 162, 235)',
          'rgb(255, 205, 86)',
          'red',
          'green',
        ],
        hoverOffset: 4
      }]
    }
  end
end
