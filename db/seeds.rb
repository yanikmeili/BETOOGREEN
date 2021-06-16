require "open-uri"

Review.destroy_all
Purchase.destroy_all
Discount.destroy_all
Listing.destroy_all
Product.destroy_all
User.destroy_all

# USER

martin = User.create!(email: 'martin@gmail.com', password:'123456')
yanik = User.create!(email: 'yanikm41@gmail.com', password:'123456')

# PRODUCT

cup = Product.create!(
  user: yanik,
  name:'Eco Cup',
  description:'This paper cups are resistant and responsible. Because they are made with thin yet strong layers of recycled paper. Restaurants, hotels and bars are switching to paper Eco Cup. They customers love it. And with collective buying you can have them way more cheap. Order today!',
  material: 'Paper and wax',
  impact: 'Every day millons of cups of coffee and tea are served worldwide generating tons of resources that end up in filling lands. Materials that simply go out of the circular economy and are lost forever. THis is the importance of a biodegradable cup. It will vanish leaving no footprint.',
  origin: 'Egypt'
  )

cup_image = URI.open('https://yaffa-cdn.s3.amazonaws.com/yaffadsp/images/dmImage/SourceImage/planet-saver-cup.jpg')
cup.photos.attach(io: cup_image, filename: 'planet-saver-cup.jpg', content_type: 'image/jpg')
puts "Cup photo attached: #{cup.photos.attached?}"

straw = Product.create!(
  user: martin,
  name:'Bamboo straw',
  description:'Easy to clean, reusable bamboo straws. Made from renweable ptantations of bamboo, house of the reservoir of the nices pandas on earth. Help us conserve this wonderfull ecosystem. Place your order soon!',
  material: 'Bamboo',
  impact: 'Positive impact thanks to that the profit obtained with this product is reinvested in the fields of bamboo of the ChinPebece National Park of Vietnam.',
  origin: 'Vietnam'
  )

straw_image_1 = URI.open('https://i.pinimg.com/736x/6f/9a/8b/6f9a8bded893274c17ff9e2e07b69db6.jpg')
straw_image_2 = URI.open('http://sc04.alicdn.com/kf/Hc5516015b0124a8c8b648f07b87df139Y.jpg')
straw.photos.attach(io: straw_image_1, filename: '6f9a8bded893274c17ff9e2e07b69db6.jpg', content_type: 'image/jpg')
straw.photos.attach(io: straw_image_2, filename: 'Hc5516015b0124a8c8b648f07b87df139Y.jpg', content_type: 'image/jpg')

puts "Straw photo attached: #{straw.photos.attached?}"

# SALE

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

