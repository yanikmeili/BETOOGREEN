Review.destroy_all
Purchase.destroy_all
Discount.destroy_all
Listing.destroy_all
Product.destroy_all
User.destroy_all

martin = User.create!(email: 'martin@gmail.com', password:'123456')
yanik = User.create!(email: 'yanikm41@gmail.com', password:'123456')

cup = Product.create!(
  user: yanik,
  name:'Eco Cup',
  description:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  material: 'Paper',
  impact: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  origin: 'Vietnam'
  )

straw = Product.create!(
  user: martin,
  name:'Bamboo straw',
  description:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  material: 'Bamboo',
  impact: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  origin: 'Egypt'
  )

cup_sale = Listing.create!(
  stock: 10000,
  max_price: 0.1,
  min_price: 0.05,
  end_date: Date.today + 30,
  product: cup
  )

straw_sale = Listing.create!(
  stock: 7000,
  max_price: 1,
  min_price: 0.7,
  end_date: Date.today + 25,
  product: straw
  )

straw_discount = Discount.create!(
  quantity: 3500,
  price: 0.85,
  listing: straw_sale,
  )

cup_discount_1 = Discount.create!(
  quantity: 4000,
  price: 0.09,
  listing: cup_sale,
  )

cup_discount_2 = Discount.create!(
  quantity: 8000,
  price: 0.065,
  listing: cup_sale,
  )

cup_purchase = Purchase.create!(
  user: martin,
  listing: cup_sale,
  quantity: 4500
  )

cup_purchase_2 = Purchase.create!(
  user: martin,
  listing: cup_sale,
  quantity: 1000
  )

straw_purchase = Purchase.create!(
  user: yanik,
  listing: straw_sale,
  quantity: 4000
  )

cup_review = Review.create!(
  purchase: cup_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 5
)

straw_review = Review.create!(
  purchase: straw_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 3
  )


puts "Seeding ended"
puts "User created: #{User.count}"
puts "Review created: #{Review.count}"
puts "Purchase created: #{Purchase.count}"
puts "Listing created: #{Listing.count}"
puts "Discount created: #{Discount.count}"
puts "Product created: #{Product.count}"

