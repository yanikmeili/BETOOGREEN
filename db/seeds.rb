require "open-uri"

Review.destroy_all
Purchase.destroy_all
Discount.destroy_all
Listing.destroy_all
Product.destroy_all
User.destroy_all

# USER

martin = User.create!(email: 'martin@gmail.com', password:'123456')
yanik = User.create!(email: 'Yanik@gmail.com', password:'123456')
ana = User.create!(email: 'ana@gmail.com', password:'123456')
trini = User.create!(email: 'trini@gmail.com', password:'123456')
nico = User.create!(email: 'nico@gmail.com', password:'123456')
pablo = User.create!(email: 'pablo@gmail.com', password:'123456')
jesus = User.create!(email: 'jesus@gmail.com', password:'123456')
mohamed = User.create!(email: 'mohamed@gmail.com', password:'123456')
carlos = User.create!(email: 'carlos@gmail.com', password:'123456')
pablito = User.create!(email: 'pablito@gmail.com', password:'123456')

# PRODUCT

utensil_set = Product.create!(
  user: ana,
  name:'Three Piece Utensil Set',
  description:'Set includes serving spoon, spatula and ladle. Maximum Temperature: 167 Degree Fahrenheit',
  material: 'Wood plastic composite. BPA Free Polypropylene.',
  impact: 'Forest Stewardship Council certified wood from plantation pine.',
  origin: 'England'
  )

utensil_set_image_1 = URI.open('https://images-na.ssl-images-amazon.com/images/I/71omkIw0D2L._AC_SL1500_.jpg')
utensil_set.photos.attach(io: utensil_set_image_1, filename: '71omkIw0D2L._AC_SL1500_.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{utensil_set.photos.attached?}"
aguaencaja = Product.create!(
  user: yanik,
  name: 'Agua en Caja Mejor',
  description: 'Unfortunately most of the water sold in the world comes in plastic bottles. It would be much better if we all would prefer water in boxes. Because the recycling process is easyer and cheaper.',
  material: 'Cardboard',
  impact: '100% recyclable',
  origin: 'Spain'
  )
aguaencaja1 = URI.open('https://static.wixstatic.com/media/be4e8c_d3249b76c4f2453a9900bbea285dfe2a~mv2_d_2666_2666_s_4_2.jpg')
aguaencaja2 = URI.open('https://s03.s3c.es/imag/_v0/770x420/3/7/d/caja.jpg')
aguaencaja3 = URI.open('https://images-na.ssl-images-amazon.com/images/I/81AUV97kf4L._AC_SL1500_.jpg')
aguaencaja4 = URI.open('https://aguaencajacanarias.com/wp-content/uploads/2020/02/agua-en-caja-canarias-15-1.jpg')
aguaencaja5 = URI.open('https://i.pinimg.com/originals/f5/7e/3e/f57e3eff182ec7e0950cd613ecb8f04d.png')

aguaencaja.photos.attach(io: aguaencaja1, filename: 'be4e8c_d3249b76c4f2453a9900bbea285dfe2a~mv2_d_2666_2666_s_4_2.jpg', content_type: 'image/jpg')
aguaencaja.photos.attach(io: aguaencaja2, filename: 'caja.jpg', content_type: 'image/jpg')
aguaencaja.photos.attach(io: aguaencaja3, filename: '81AUV97kf4L._AC_SL1500_.jpg', content_type: 'image/jpg')
aguaencaja.photos.attach(io: aguaencaja4, filename: 'agua-en-caja-canarias-15-1.jpg', content_type: 'image/jpg')
aguaencaja.photos.attach(io: aguaencaja5, filename: 'f57e3eff182ec7e0950cd613ecb8f04d.png', content_type: 'image/png')
puts "Agua en caja photo attached: #{aguaencaja.photos.attached?}"



toilet_paper = Product.create!(
  user: yanik,
  name:'Premium bamboo toilet paper',
  description:"24 rolls of 100 per cent premium bamboo toilet paper",
  material: 'Cork',
  impact: '27,000 trees are cut down daily to make toilet paper. Reel is made from tree-free, 100per cent amboo paper. Zero plastic packaging, even the tape.',
  origin: 'USA'
  )
toilet_paper_1 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-1_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_1, filename: 'product-image-1_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "mat photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_2 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-2_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_2, filename: 'product-image-2_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_3 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-3_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_3, filename: 'product-image-3_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_4 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-4_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_4, filename: 'product-image-4_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_5 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/files/reel-sustainable.jpg')
toilet_paper.photos.attach(io: toilet_paper_5, filename: '1reel-sustainable.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"



mat = Product.create!(
  user: yanik,
  name:'Luxury Cork Mat (Unisex)',
  description:'Luxuriant, warm-to-the-touch cork. Gets grippier the more you sweat. Sustainable, microbial, no need for chemical cleaning. Say goodbye to rubber, plastic smelling mats! Quite possibly the last mat you will ever need. Be good to the environment, be good to yourself.',
  material: 'Cork',
  impact: 'Cork is a renewable harvest. No trees are killed. Grown in beautiful Portugal.
',
  origin: 'Portugal'
  )
mat_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/e_e52f6025-21b6-4957-9975-2fe3c60c8aac_720x.png')
mat.photos.attach(io: mat_image_1, filename: 'e_e52f6025-21b6-4957-9975-2fe3c60c8aac_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/original_06e89766-d53d-4b60-9078-fa3e333b97f1_720x.png')
mat.photos.attach(io: mat_image_2, filename: 'original_06e89766-d53d-4b60-9078-fa3e333b97f1_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/IMG_2653edit3_720x.png')
mat.photos.attach(io: mat_image_3, filename: 'products/IMG_2653edit3_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/A60A97598c_c730f6f2-5a99-45d6-a323-c7e9e48bf92f_720x.jpg')
mat.photos.attach(io: mat_image_4, filename: 'A60A97598c_c730f6f2-5a99-45d6-a323-c7e9e48bf92f_720x.jpg', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"


mat_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/1W9A9843ocd_6d00987d-744e-460c-85da-55e9e62a329f_720x.png')
mat.photos.attach(io: mat_image_5, filename: '1W9A9843ocd_6d00987d-744e-460c-85da-55e9e62a329f_720x.png', content_type: 'image/png')
puts "mat photo attached: #{mat.photos.attached?}"

pants = Product.create!(
  user: yanik,
  name:'Yoga Pants Black',
  description:'These yoga pants are made from certified organic bamboo fabric. It has a wide fit, which gives you enough flexibility. These yoga pants are suitable for activities such as yoga (asana), bikram, meditation and pilates.',
  material: 'Organic bamboo',
  impact: 'These yoga pants are sustainably produced under fair working conditions.',
  origin: 'Germany'
  )
pants_image_1 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-zwart-eco.jpg')
pants.photos.attach(io: pants_image_1, filename: 'ogabroek-ruim-heren-zwart-eco.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_2 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-ecologisch-zwart-heren.jpg')
pants.photos.attach(io: pants_image_2, filename: 'yogabroek-ruim-ecologisch-zwart-heren.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_3 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-bio-zwart.jpg')
pants.photos.attach(io: pants_image_3, filename: 'yogabroek-ruim-heren-bio-zwart.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_4 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-zwart-eco.jpg')
pants.photos.attach(io: pants_image_4, filename: 'ogabroek-ruim-heren-zwart-eco.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_5 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-ecologisch-zwart-heren.jpg')
pants.photos.attach(io: pants_image_5, filename: 'yogabroek-ruim-ecologisch-zwart-heren.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"


socks = Product.create!(
  user: ana,
  name:'Organic Socks',
  description:'Perfect adaptability to the foot. Embroidered toe cap for increased durability. Two sizes available: 35-40 and 41-46. Adapts to each type of foot',
  material: 'Organic cotton',
  impact: '3.0 km of avoided driving emissions, 140 days of drinking water saved and 238.5 light hours saved.',
  origin: 'Portugal'
  )

socks_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/par-de-calcetines-minimalistas-largos-minimalism-brand-ecologicos-negros-verdesjpg.jpg?v=1592906298')
socks.photos.attach(io: socks_image_1, filename: 'par-de-calcetines-minimalistas-largos-minimalism-brand-ecologicos-negros-verdesjpg.jpg?v=1592906298', content_type: 'image/jpg')

socks_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Socks-Sostenible-Minimalista-Organica-Minimalism-black.jpg?v=1592906298')
socks.photos.attach(io: socks_image_2, filename: 'Socks-Sostenible-Minimalista-Organica-Minimalism-black.jpg?v=1592906298', content_type: 'image/jpg')

socks_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Socks-Sostenible-Minimalista-Organica-Minimalism-black-eco_900x.jpg?v=1592906311')
socks.photos.attach(io: socks_image_3, filename: 'Socks-Sostenible-Minimalista-Organica-Minimalism-black-eco_900x.jpg?v=1592906311', content_type: 'image/jpg')
puts "socks photo attached: #{socks.photos.attached?}"

coffee_cup = Product.create!(
  user: ana,
  name:'Coffee Cup 355ml',
  description:'Love Coffee, Hate Waste? Billions of disposable coffees cups end up in landfills each year across the globe. Your coffee is important, and so is what you drink it out of. Up until recently, people believed they were doing the right thing by drinking their coffee from a “paper” cup, but that paper is often lined with plastic and makes it almost impossible to recycle, let alone biodegrade. Add to this the plastic of the disposable lid and the single use plastic and waste really starts to add up.',
  material: 'Made from 100% food-safe silicone.',
  impact: 'Our reusable coffee cup is light, tough, attractive, very durable and most importantly won’t affect your favourite coffee’s taste.',
  origin: 'Spain'
  )

coffee_cup_image_1 = URI.open('https://www.onyalife.com/wp-content/uploads/Red-Coffee-Cup-New.jpg')
coffee_cup.photos.attach(io: coffee_cup_image_1, filename: 'Red-Coffee-Cup-New.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{coffee_cup.photos.attached?}"


coffee_cup_image_2 = URI.open('https://www.onyalife.com/wp-content/uploads/Black-Coffee-Cup-New.jpg')
coffee_cup.photos.attach(io: coffee_cup_image_2, filename: 'Black-Coffee-Cup-New.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{coffee_cup.photos.attached?}"


coffee_cup_image_3 = URI.open('https://www.onyalife.com/wp-content/uploads/Purple-Coffee-Cup-New.jpg')
coffee_cup.photos.attach(io: coffee_cup_image_3, filename: 'Purple-Coffee-Cup-New.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{coffee_cup.photos.attached?}"


coffee_cup_image_4 = URI.open('https://www.onyalife.com/wp-content/uploads/GreyBlue-NEW-Coffee-Cup-1.jpg')
coffee_cup.photos.attach(io: coffee_cup_image_4, filename: 'GreyBlue-NEW-Coffee-Cup-1.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{coffee_cup.photos.attached?}"


coffee_cup_image_5 = URI.open('https://www.onyalife.com/wp-content/uploads/Purple-Coffee-Cup-New.jpg')
coffee_cup.photos.attach(io: coffee_cup_image_5, filename: 'Purple-Coffee-Cup-New.jpg', content_type: 'image/jpg')
puts "socks photo attached: #{coffee_cup.photos.attached?}"

women_t_shirt = Product.create!(
  user: ana,
  name: "Women's Minimalism T-shirt",
  description:'High quality cotton of 180 grams and 100% combed. Easy ironing. Recommended washing at 30°C. Comfort, durability, quality and everyday use',
  material: 'Organic cotton',
  impact: '9.2 km of avoided driving emissions, 323 days of drinking water saved and 376.8 light hours saved.',
  origin: 'Portugal'
  )

women_t_shirt_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/camiseta-gris-frontal-mujer-minimalism-brand_1080x.jpg?v=1595228539')
women_t_shirt.photos.attach(io: women_t_shirt_image_1, filename: 'camiseta-gris-frontal-mujer-minimalism-brand_1080x.jpg?v=1595228539', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

women_t_shirt_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/camiseta-negra-minimalism-brand-sostenible-organica-mujer-fruta_900x.jpg?v=1595929823')
women_t_shirt.photos.attach(io: women_t_shirt_image_2, filename: 'camiseta-negra-minimalism-brand-sostenible-organica-mujer-fruta_900x.jpg?v=1595929823', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

women_t_shirt_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Camiseta-blanca-minimalista-ropa-mujer-organica-sostenible_900x.jpg?v=1595228539')
women_t_shirt.photos.attach(io: women_t_shirt_image_3, filename: 'Camiseta-blanca-minimalista-ropa-mujer-organica-sostenible_900x.jpg?v=1595228539', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

forks = Product.create!(
  user: pablito,
  name:'Wooden forks',
  description:'Crafted with wook from sustainable forests, this forks can make your picnics in nature as natural as nature itself. Naturaly, it sound good!',
  material: 'Wood',
  impact: 'No oil has been used in the extraction of the raw materirals of this product, fabrication or transportations.',
  origin: 'Nambia'
  )
forks_image = URI.open('https://images-na.ssl-images-amazon.com/images/I/81gkVenBQ0L._AC_SL1500_.jpg')
forks.photos.attach(io: forks_image, filename: '81gkVenBQ0L._AC_SL1500_.jpg', content_type: 'image/jpg')
puts "forks photo attached: #{forks.photos.attached?}"

glasses = Product.create!(
  user: martin,
  name:'Glasses made of recycled bottles',
  description:'Have a clear vision of the future. With sustainable glass, made out of recycled plastic you can give a glance to the benefits of circular fabrication.',
  material: 'Reycled PET',
  impact: 'A trendy yet simple way to reduce the flow of plastic from our economy to the enviroment.',
  origin: 'Bilbao'
  )
glasses_image_1 = URI.open('https://www.theinertia.com/wp-content/uploads/2017/02/norton-point.jpg')
glasses.photos.attach(io: glasses_image_1, filename: 'norton-point.jpg', content_type: 'image/jpg')
glasses_image_2 = URI.open('https://inhabitat.com/wp-content/blogs.dir/1/files/2019/03/9Feb2019_PreciousPlastic_-30main-600x480.jpg')
glasses.photos.attach(io: glasses_image_2, filename: '9Feb2019_PreciousPlastic_-30main-600x480.jpg', content_type: 'image/jpg')
puts "glasses photo attached: #{glasses.photos.attached?}"

bag = Product.create!(
  user: trini,
  name:'Eco bags',
  description:'The bags are crafted with ethics and intentions. An independent nonprofit member of the Fair Trade Federation, the brand’s goal is to make the international marketplace available to fairly paid artisans. Many of the women artisans making these bags work from home and earn a sustainable income for their families. The totes are perfect for days on-the-go, and the overnighters are perfect for an adventurous weekend away.',
  material: 'Plants',
  impact: 'It does not polute as the traditional bags made with plastic',
  origin: ' Quebec '
  )
bag_image = URI.open('https://malababa.imgix.net/media/catalog/product/1/9/19vb073granada_y.jpg')
bag.photos.attach(io: bag_image, filename: '19vb073granada_y.jpg', content_type: 'image/jpg')
puts "bag photo attached: #{bag.photos.attached?}"

sandal = Product.create!(
  user: ana,
  name:'Eco sandals',
  description:'These fair trade beaded leather sandals are lovingly handmade by empowered artisans in East Africa. The Iris Sandals in Champagne add a pop of shimmering metallic to traditional leather flip flops. They are perfect for lazy afternoons sitting in the garden.',
  material: 'Lether',
  impact: 'It reduces the amout of plastic in the sea and in the food!',
  origin: 'East Africa'
  )
sandal_image = URI.open('https://assets.website-files.com/602e0329d354ce64f9277c43/60a6f7d10456ff5fc3e9f708_sustainable-sandals.jpg')
sandal.photos.attach(io: sandal_image, filename: '60a6f7d10456ff5fc3e9f708_sustainable-sandals.jpg', content_type: 'image/jpg')
puts "Sandal photo attached: #{sandal.photos.attached?}"

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

# trini seeds

swab = Product.create!(
  user: trini,
  name:'Plastic-free Bamboo Cotton Swabs',
  description: "A simple change to make your morning routine more eco friendly. Switch to these zero waste, plastic-free, 100% biodegradable cotton swabs with bamboo stems. Bamboo is the world's fastest naturally-renewing resource which is also inherently anti-microbial, anti-fungal and anti-bacterial.",
  material: 'Biodegradable bamboo, cotton',
  impact: "The average person disposes of 415 cotton swabs a year. Use these bamboo cotton swabs and save our landfills and oceans from unnecessary single-use plastic. Also the packaged is a compostable kraft paper box.",
  origin: 'Barcelona'
  )

swab_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/bamboo-qtip-cotton-swab_1024x1024.jpg')
swab_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-beauty_1024x1024.jpg')
swab_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty_1024x1024.jpg')
swab_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty-2_1024x1024.jpg')
swab_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath_1024x1024.jpg')
swab.photos.attach(io: swab_image_1, filename: 'bamboo-qtip-cotton-swab_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_2, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-beauty_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_3, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_4, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty-2_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_5, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath_1024x1024.jpg', content_type: 'image/jpg')

puts "Swabs photo attached: #{swab.photos.attached?}"


bagel_kraft = Product.create!(
  user: ana,
  name:'Bagel Kraft Container',
  description: "Bagel container. Valid for both Bagels and other circular products.",
  material: 'Made with virgin paper fiber and with good thermal resistance.',
  impact: "Ecological and 100% recyclable.",
  origin: 'France'
  )

bagel_kraft_image_1 = URI.open('https://envanature.com/295-Niara_thickbox/envase-bagel.jpg')
bagel_kraft.photos.attach(io: bagel_kraft_image_1, filename: 'envase-bagel.jpg', content_type: 'image/jpg')

puts "Bagel photo attached: #{bagel_kraft.photos.attached?}"

cup_holders = Product.create!(
  user: ana,
  name:'Kraft Cardboard Cup Holders',
  description: "Kraft cardboard cup holders. Ecological and insulating from heat. Cup holder.",
  material: 'Made with virgin paper fiber and with good thermal resistance.',
  impact: "Ecological and 100% recyclable.",
  origin: 'France'
  )

cup_holders_image_1 = URI.open('https://envanature.com/630-Niara_thickbox/portavasos-de-carton-kraft.jpg')
cup_holders.photos.attach(io: cup_holders_image_1, filename: 'portavasos-de-carton-kraft.jpg', content_type: 'image/jpg')

puts "Cup Holders photo attached: #{cup_holders.photos.attached?}"


buttle_pet = Product.create!(
  user: ana,
  name:'Buttle',
  description: "PET bottles. Recyclable. Imitation glass. With pre-screwed black cap included. Bottles for dairy and juices.",
  material: 'Made with virgin fiber.',
  impact: "Ecological and 100% recyclable.",
  origin: 'France'
  )

buttle_pet_image_1 = URI.open('https://envanature.com/197-Niara_thickbox/botellas-pet-100ml-71-uds.jpg')
buttle_pet.photos.attach(io: buttle_pet_image_1, filename: 'botellas-pet-100ml-71-uds.jpg', content_type: 'image/jpg')

puts "Buttle PET photo attached: #{buttle_pet.photos.attached?}"

toothbrush = Product.create!(
  user: trini,
  name:'Bamboo toothbrush | 4 pack',
  description:'Make the change with our bamboo toothbrushes, these are an environment-friendly alternative to a conventional plastic toothbrushes. They are made out of natural moso bamboo, which is one of the fastest growing plants in the world, making it a very sustainable product.',
  material: 'Moso bamboo',
  impact: 'Bamboo is the fastest growing plant on earth. So like grass, when you cut it back, it continues to grow - and fast. It is naturally antibacterial which means that there is no need to use fertilisers or pesticides during its cultivation.',
  origin: 'Indonesia'
  )

toothbrush_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/goldrickproduct2020-195_900x.jpg')
toothbrush_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/ToothbrushBamboo_900x.jpg')
toothbrush_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/Toothbrush_1080x.png')
toothbrush_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/Toothbrushpackaging_7c481e09-cd8e-40fd-a1d8-9aedca0cc0d1_900x.jpg')
toothbrush_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/goldrickproduct2020-184_e3a39b1d-8e91-4172-b8f9-27cee99e2f83_900x.jpg')
toothbrush.photos.attach(io: toothbrush_image_1, filename: 'goldrickproduct2020-195_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_2, filename: 'ToothbrushBamboo_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_3, filename: 'Toothbrush_1080x.png', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_4, filename: 'Toothbrushpackaging_7c481e09-cd8e-40fd-a1d8-9aedca0cc0d1_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_5, filename: 'goldrickproduct2020-184_e3a39b1d-8e91-4172-b8f9-27cee99e2f83_900x.jpg', content_type: 'image/jpg')

puts "Toothbrush photo attached: #{toothbrush.photos.attached?}"

dishwash = Product.create!(
  user: trini,
  name:'Vegan Dish Wash',
  description:'The DISH BLOCK concentrated dishwashing soap is a cleaning powerhouse with a rich, sudsy lather. Cuts stubborn grime and grease on dishes, pots and pans. With added aloe vera to be gentle on your hands. Free of dyes and fragrance. Each 6 oz (170g) bar or 22.9 oz (649g) bar of DISH BLOCK® dish soap concentrate goes a long way.',
  material: 'Biodegradable, vegan ingredients',
  impact: 'Reduce the environmental pollution that stems from your home simply by choosing eco friendly, non toxic, products.',
  origin: 'Barcelona'
  )

dishwash_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2239/2927/products/dishblockandAgaveandwhiteteakdishbrushnotoxlife017_1024x1024@2x.jpg')
dishwash_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2239/2927/products/dish-block-suds_1024x1024@2x.jpg')
dishwash_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2239/2927/products/dishblockandAgaveandwhiteteakdishbrushnotoxlife019_1024x1024@2x.jpg')
dishwash_image_4 = URI.open('https://cdn.shopify.com/s/files/1/2239/2927/products/DishBlock_1024x1024@2x.jpg')
dishwash_image_5 = URI.open('https://cdn.shopify.com/s/files/1/2239/2927/products/no-tox-life-dish-washing-block612_1024x1024@2x.jpg')
dishwash.photos.attach(io: dishwash_image_1, filename: 'dishblockandAgaveandwhiteteakdishbrushnotoxlife017_1024x1024@2x.jpg', content_type: 'image/jpg')
dishwash.photos.attach(io: dishwash_image_2, filename: 'products/dish-block-suds_1024x1024@2x.jpg', content_type: 'image/jpg')
dishwash.photos.attach(io: dishwash_image_3, filename: 'dishblockandAgaveandwhiteteakdishbrushnotoxlife019_1024x1024@2x.jpg', content_type: 'image/jpg')
dishwash.photos.attach(io: dishwash_image_4, filename: 'DishBlock_1024x1024@2x.jpg', content_type: 'image/jpg')
dishwash.photos.attach(io: dishwash_image_5, filename: 'no-tox-life-dish-washing-block612_1024x1024@2x.jpg', content_type: 'image/jpg')

puts "Dishwash photo attached: #{dishwash.photos.attached?}"

sunglasses = Product.create!(
  user: trini,
  name:'Storm Chinook Polarised Sunglasses',
  description:'Capsule collection produced to support Searching for Chinook.The UPSEA™ plastic that is used in our products has been created from marine plastic waste that we have collected and recycled ourselves. Plastic does not disintegrate like natural products; it decomposes in microplastics that gets ingested by animals. Recycling is the first step to break this circle, but we need to change the way we design, consume and produce, and make all of us part of our story.',
  material: 'Recycled plastic',
  impact: 'From our supply chain to products manufactured with 100% Upsea™ up-cycled marine plastic, we actively contribute to 6 of the 17 Sustainable development goals that were formally adopted in September 2015 by the UN General Assembly with the Agenda 2030 for Sustainable Development.',
  origin: 'Switzerland'
  )

sunglasses_image_1 = URI.open('https://cdn.shopify.com/s/files/1/1238/0884/products/Foto05_3c9ae39e-66db-4e76-9a3e-0386f908fd59_1080x.jpg')
sunglasses_image_2 = URI.open('https://cdn.shopify.com/s/files/1/1238/0884/products/Foto01_47237d0f-598d-4d79-91da-cdc7f76f7b46_1080x.jpg')
sunglasses_image_3 = URI.open('https://cdn.shopify.com/s/files/1/1238/0884/products/Foto01_1_3b9e3239-c37e-407b-ba2f-a0ff76d239d6_1080x.jpg')
sunglasses_image_4 = URI.open('https://cdn.shopify.com/s/files/1/1238/0884/products/Foto05_1@2x.jpg')
sunglasses_image_5 = URI.open('https://cdn.shopify.com/s/files/1/1238/0884/products/Foto13_7a7f6d76-7208-44e4-a223-64326ce5ec8c_1080x.jpg')
sunglasses.photos.attach(io: sunglasses_image_1, filename: 'Foto05_3c9ae39e-66db-4e76-9a3e-0386f908fd59_1080x.jpg', content_type: 'image/jpg')
sunglasses.photos.attach(io: sunglasses_image_2, filename: 'Foto01_47237d0f-598d-4d79-91da-cdc7f76f7b46_1080x.jpg', content_type: 'image/jpg')
sunglasses.photos.attach(io: sunglasses_image_3, filename: 'Foto01_1_3b9e3239-c37e-407b-ba2f-a0ff76d239d6_1080x.jpg', content_type: 'image/jpg')
sunglasses.photos.attach(io: sunglasses_image_4, filename: 'Foto05_1@2x.jpg', content_type: 'image/jpg')
sunglasses.photos.attach(io: sunglasses_image_5, filename: 'Foto13_7a7f6d76-7208-44e4-a223-64326ce5ec8c_1080x.jpg', content_type: 'image/jpg')

puts "Sunglasses photo attached: #{sunglasses.photos.attached?}"

handbag = Product.create!(
  user: trini,
  name:'Multicolored handbagndbag',
  description: "Treat the world as your personal runway with our one-of-a-kind, woven handbags made with sustainable rattan handles. Handmade from 100% upcycled materials and designed with 100% heart.",
  material: 'Handmade, Upcycled materials ',
  impact: "For the Environment - Depending on it's size, each item we create keeps between 2 oz to 1 lb of unrecyclable materials from entering our land and oceans--that amount is the equivalent of up to 38 water bottles. For Women - When you purchase a product you provide an artisan mother with a sustainable livelihood which pays three times the average wage in her community.",
  origin: 'Argentina'
  )

handbag_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2415/6235/products/Rattan_Handbag_-_Collage1_bb5bbfec-3318-4cd6-89e7-99b903cb1e54_1080x.jpg')
handbag_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2415/6235/products/Mother_Erth_Top_Handle_Handbag_Product_Photo_1080x.jpg')
handbag_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2415/6235/products/Artisans_Choice_Handbag_6_1080x.jpg')
handbag_image_4 = URI.open('https://cdn.shopify.com/s/files/1/2415/6235/products/Mother_Erth_Handbag_Product_Photo_1080x.jpg')
handbag_image_5 = URI.open('https://cdn.shopify.com/s/files/1/2415/6235/products/Handbag_-_Product_Shot_Template_2_158017fa-32e1-40e5-8065-6846acd7bc5c_1080x.png')
handbag.photos.attach(io: handbag_image_1, filename: 'Rattan_Handbag_-_Collage1_bb5bbfec-3318-4cd6-89e7-99b903cb1e54_1080x.jpg', content_type: 'image/jpg')
handbag.photos.attach(io: handbag_image_2, filename: 'Mother_Erth_Top_Handle_Handbag_Product_Photo_1080x.jpg', content_type: 'image/jpg')
handbag.photos.attach(io: handbag_image_3, filename: 'Artisans_Choice_Handbag_6_1080x.jpg', content_type: 'image/jpg')
handbag.photos.attach(io: handbag_image_4, filename: 'Mother_Erth_Handbag_Product_Photo_1080x.jpg', content_type: 'image/jpg')
handbag.photos.attach(io: handbag_image_5, filename: 'Handbag_-_Product_Shot_Template_2_158017fa-32e1-40e5-8065-6846acd7bc5c_1080x.png', content_type: 'image/jpg')

puts "handbag photo attached: #{handbag.photos.attached?}"

lunchwraps = Product.create!(
  user: trini,
  name:'Lunch Wraps',
  description: "The Reusable Lunch Wrap is uniquely designed for both your large roll/multiple sandwiches or to re-wrap that small half eaten toddler sandwich for later. In addition to sandwiches, the Reusable Lunch Wrap is versatile enough for veggie sticks, snack foods, pizza, biscuits, croissants, bagels, muffins, pasties, pies and cakes. You can also transport your deli meats and cheeses from the store, cutting down on plastic wrap and bag waste.",
  material: '100% Vegan Friendly, made with absolutely no animal products and recycled plastic drink bottles',
  impact: "Our commitment to sustainability extends to our packaging which is made from post-consumer recycled material and printed with water based inks so it is suitable for both recycling or composting. We ship low waste and plastic free, reusing boxes and packing materials where we can or FSC certified shipping envelopes that are 100% recyclable. We are proud to be a B Corporation. Our products are responsibly made in China and are 100% recyclable at the end of their long life cycle.",
  origin: 'China'
  )

lunchwraps_image_1 = URI.open('https://www.onyalife.com/wp-content/uploads/Apple-Lunch-Wrap.jpg')
lunchwraps_image_2 = URI.open('https://www.onyalife.com/wp-content/uploads/Teal-Lunch-Wrap.jpg')
lunchwraps_image_3 = URI.open('https://www.onyalife.com/wp-content/uploads/Chilli-Lunch-Wrap.jpg')
lunchwraps_image_4 = URI.open('https://www.onyalife.com/wp-content/uploads/Pink-Lunch-Wrap.jpg')
lunchwraps_image_5 = URI.open('https://www.onyalife.com/wp-content/uploads/Purple-Lunch-Wrap.jpg')
lunchwraps.photos.attach(io: lunchwraps_image_1, filename: 'Apple-Lunch-Wrap.jpg', content_type: 'image/jpg')
lunchwraps.photos.attach(io: lunchwraps_image_2, filename: 'Teal-Lunch-Wrap.jpg', content_type: 'image/jpg')
lunchwraps.photos.attach(io: lunchwraps_image_3, filename: 'Chilli-Lunch-Wrap.jpg', content_type: 'image/jpg')
lunchwraps.photos.attach(io: lunchwraps_image_4, filename: 'Pink-Lunch-Wrap.jpg', content_type: 'image/jpg')
lunchwraps.photos.attach(io: lunchwraps_image_5, filename: 'Purple-Lunch-Wrap.jpg', content_type: 'image/jpg')

puts "lunchwraps photo attached: #{lunchwraps.photos.attached?}"

toiletpaper = Product.create!(
  user: trini,
  name:'100% Recycled Toilet Paper',
  description: "Made from 100% recycled fibres, each roll will immediately turn your bathroom into that eco-friendly paradise you’ve been longing for (personal waterfall not included). The soft, 3 ply sheets make for a super comfy wipe. Competitively priced with supermarket rolls, they feel good on your bum and your budget.",
  material: '100% recycled materials',
  impact: "We want to ensure everyone has access to a toilet and basic sanitation. That’s why 50% of profits from all of our products go directly to our charity partners who work in water, hygiene and sanitation. You’re helping millions of people gain access to clean water just by using the loo. Well done!",
  origin: 'Portugal'
  )

toiletpaper_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0286/5401/0428/products/REC_TP_1_3x_5a767835-dd0f-4454-ad31-87ef531e0f9a.jpg')
toiletpaper_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0286/5401/0428/products/REC_TP_3_3x_20e014c3-d954-4e32-916f-bbafd83d00e9.jpg')
toiletpaper_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0286/5401/0428/products/REC_TP_1_3x_6db98e05-dad2-4297-9bf4-98fa7b861d39.jpg')
toiletpaper_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0286/5401/0428/products/REC_TP_4_3x_e990b1c9-f7b3-4135-972d-0e52f9edb609.jpg')
toiletpaper_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0286/5401/0428/products/REC_TP_5_3x_b1aba114-014e-4093-b6b6-81c89691643a.jpg')
toiletpaper.photos.attach(io: toiletpaper_image_1, filename: 'REC_TP_1_3x_5a767835-dd0f-4454-ad31-87ef531e0f9a.jpg', content_type: 'image/jpg')
toiletpaper.photos.attach(io: toiletpaper_image_2, filename: 'REC_TP_3_3x_20e014c3-d954-4e32-916f-bbafd83d00e9.jpg', content_type: 'image/jpg')
toiletpaper.photos.attach(io: toiletpaper_image_3, filename: 'REC_TP_1_3x_6db98e05-dad2-4297-9bf4-98fa7b861d39.jpg', content_type: 'image/jpg')
toiletpaper.photos.attach(io: toiletpaper_image_4, filename: 'REC_TP_4_3x_e990b1c9-f7b3-4135-972d-0e52f9edb609.jpg', content_type: 'image/jpg')
toiletpaper.photos.attach(io: toiletpaper_image_5, filename: 'REC_TP_5_3x_b1aba114-014e-4093-b6b6-81c89691643a.jpg', content_type: 'image/jpg')

puts "toiletpaper photo attached: #{toiletpaper.photos.attached?}"


dumptruck = Product.create!(
  user: trini,
  name:'Dump Truck',
  description: "Need help hauling a big load while helping save the planet? The Green Toys Dump Truck is ready to get working. Made from 100% recycled plastic milk containers, this really is the most energy efficient vehicle on this or any planet. The super cool eco-design has a workable dumper and no metal axles.",
  material: '100% recycled plastic',
  impact: "Packaged with recycled and recyclable materials, printed with soy inks.",
  origin: 'USA'
  )

dumptruck_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0149/8336/4708/products/dumptruck_orangeblue_1024x.jpg')
dumptruck_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0149/8336/4708/products/DumpTruck_RePack_20190416_1024x1024@2x.jpg')
dumptruck_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0149/8336/4708/products/150630_dump_truck_034_1024x.jpg')
dumptruck_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0149/8336/4708/products/PinkDump_119_1024x.jpg')
dumptruck_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0149/8336/4708/products/1712305_greentoys_blue_dump_truck_005_1024x.jpg')
dumptruck.photos.attach(io: dumptruck_image_1, filename: 'dumptruck_orangeblue_1024x.jpg', content_type: 'image/jpg')
dumptruck.photos.attach(io: dumptruck_image_2, filename: 'DumpTruck_RePack_20190416_1024x1024@2x.jpg', content_type: 'image/jpg')
dumptruck.photos.attach(io: dumptruck_image_3, filename: '150630_dump_truck_034_1024x.jpg', content_type: 'image/jpg')
dumptruck.photos.attach(io: dumptruck_image_4, filename: 'PinkDump_119_1024x.jpg', content_type: 'image/jpg')
dumptruck.photos.attach(io: dumptruck_image_5, filename: '1712305_greentoys_blue_dump_truck_005_1024x.jpg', content_type: 'image/jpg')

puts "dumptruck photo attached: #{dumptruck.photos.attached?}"

tablelinen = Product.create!(
  user: trini,
  name:'Recycled Sari Table Linen',
  description: "Brighten any room with our unique bohemian style upcycled, vibrant color Kantha collection. The collection is handmade in India by artisans who carefully collect pieces of vintage and upcycled fabrics to create elaborate patterns and colors. The result is a truly unique and individual piece for your home.",
  material: 'Recycled materials',
  impact: "Each piece is different from the next because they are each hand sewn from the scraps leftover during the process of hand making Indian saris, which is a women’s garment from the Indian subcontinent, that consists of a drape varying from five to nine yards.",
  origin: 'India'
  )

tablelinen_image_1 = URI.open('https://www.vivaterra.com/medias/sys_master/images/images/h5b/h5d/10928863871006/V3459-VTSU18-AF3121.jpg')
tablelinen_image_2 = URI.open('https://www.vivaterra.com/medias/sys_master/images/images/he3/h6e/10928864231454/V3492-VTSU18-CH3250.jpg')
tablelinen_image_3 = URI.open('https://www.vivaterra.com/medias/sys_master/images/images/h73/h1e/10928863477790/V3459-VTSU18-CH3252.jpg')
tablelinen_image_4 = URI.open('https://www.vivaterra.com/medias/sys_master/images/images/hf0/hac/10928863543326/V3460-VTSU18-CH3280-DT1.jpg')
tablelinen_image_5 = URI.open('https://www.vivaterra.com/medias/sys_master/images/images/h49/h86/10928864264222/V3460-VTSU18-CH3199.jpg')
tablelinen.photos.attach(io: tablelinen_image_1, filename: 'V3459-VTSU18-AF3121.jpg', content_type: 'image/jpg')
tablelinen.photos.attach(io: tablelinen_image_2, filename: 'V3492-VTSU18-CH3250.jpg', content_type: 'image/jpg')
tablelinen.photos.attach(io: tablelinen_image_3, filename: 'V3459-VTSU18-CH3252.jpg', content_type: 'image/jpg')
tablelinen.photos.attach(io: tablelinen_image_4, filename: 'V3460-VTSU18-CH3280-DT1.jpg', content_type: 'image/jpg')
tablelinen.photos.attach(io: tablelinen_image_5, filename: 'V3460-VTSU18-CH3199.jpg', content_type: 'image/jpg')

puts "tablelinen photo attached: #{tablelinen.photos.attached?}"

towel = Product.create!(
  user: trini,
  name:'Sustainable Travel Towel',
  description: "Evolve towels are made for adventure. Whether it's a trip to the other side of the world, or just to the beach over the road, these towels are the perfect companion. They're the perfect pairing of high performance and style.",
  material: '20 plastic bottles recycled into each towel.',
  impact: "Made from our revolutionary Ecolite™ microfiber, each towel contains an estimated 20 plastic bottles that have been recycled into our butter soft fabric. By using recycled PET, you are creating a demand for plastic waste that keeps it out of landfill and our oceans. Alongside this positive impact, we donate 10% of our profits to charity. Each towel you purchase is helping us to save the wild.",
  origin: 'UK'
  )

towel_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0029/0000/0835/products/Untitled_design_5_2000x.jpg')
towel_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0029/0000/0835/products/evolvetravelgoods-sand-free-travel-beach-towel-aegean-4999442268227_2000x.jpg')
towel_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0029/0000/0835/products/evolvetravelgoods-sand-free-travel-beach-towel-aegean-4999438467139_2000x.jpg')
towel_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0029/0000/0835/products/Photo__Raskal_3_2000x.jpg')
towel_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0029/0000/0835/products/Photo__Raskal_4_2000x.jpg')
towel.photos.attach(io: towel_image_1, filename: 'Untitled_design_5_2000x.jpg', content_type: 'image/jpg')
towel.photos.attach(io: towel_image_2, filename: 'evolvetravelgoods-sand-free-travel-beach-towel-aegean-4999442268227_2000x.jpg', content_type: 'image/jpg')
towel.photos.attach(io: towel_image_3, filename: 'evolvetravelgoods-sand-free-travel-beach-towel-aegean-4999438467139_2000x.jpg', content_type: 'image/jpg')
towel.photos.attach(io: towel_image_4, filename: 'Photo__Raskal_3_2000x.jpg', content_type: 'image/jpg')
towel.photos.attach(io: towel_image_5, filename: 'Photo__Raskal_4_2000x.jpg', content_type: 'image/jpg')

puts "towel photo attached: #{towel.photos.attached?}"

breadbag = Product.create!(
  user: trini,
  name:'Bread Bag',
  description: "Whether you live in Germany and call it Brotbeutel, or you're in France and call it Sac à pain, our Zero Waste Cotton Bread Bag is an essential kitchen accessory that will help you keep your fresh bread anywhere in the world. It can be a great housewarming gift, for anyone who loves natural, premium quality, organic products, and of course any bread lover.",
  material: 'Organic cotton fabric',
  impact: "This bag is a healthy and elegant option to replace single-use paper or plastic bags when we go to the bakery. It is designed and manufactured in a way that keeps the bread fresh for about 3 days. The bag can also be used in many other ways, such as storing things, such as breadbox, travel or any other utility you can think of.",
  origin: 'Argentina'
  )

breadbag_image_1 = URI.open('https://i.etsystatic.com/25474144/r/il/71fc90/3146583083/il_1588xN.3146583083_rz87.jpg')
breadbag_image_2 = URI.open('https://i.etsystatic.com/25474144/r/il/e6bfdc/3008151605/il_794xN.3008151605_o13e.jpg')
breadbag_image_3 = URI.open('https://i.etsystatic.com/25474144/r/il/99da3e/2942410641/il_794xN.2942410641_lybz.jpg')
breadbag_image_4 = URI.open('https://i.etsystatic.com/25474144/r/il/b26099/2942410515/il_794xN.2942410515_tjhv.jpg')
breadbag_image_5 = URI.open('https://i.etsystatic.com/25474144/r/il/e76c33/2847349724/il_794xN.2847349724_lupn.jpg')
breadbag.photos.attach(io: breadbag_image_1, filename: 'il_1588xN.3146583083_rz87.jpg', content_type: 'image/jpg')
breadbag.photos.attach(io: breadbag_image_2, filename: 'il_794xN.3008151605_o13e.jpg', content_type: 'image/jpg')
breadbag.photos.attach(io: breadbag_image_3, filename: 'il_794xN.2942410641_lybz.jpg', content_type: 'image/jpg')
breadbag.photos.attach(io: breadbag_image_4, filename: 'il_794xN.2942410515_tjhv.jpg', content_type: 'image/jpg')
breadbag.photos.attach(io: breadbag_image_5, filename: 'il_794xN.2847349724_lupn.jpg', content_type: 'image/jpg')

puts "breadbag photo attached: #{breadbag.photos.attached?}"

solidchampu = Product.create!(
  user: trini,
  name:'Solid Champu',
  description: "Solid shampoo is a dry concentrated shampoo bar, based on mild surfactants derived from coconut oil, oils, butters, powdered plants, hydrolates and essential oils. Free of sulfates, parabens, or silicones. When in contact with water, it makes an abundant and deeply cleansed foam, lengthening the time between washes. Being concentrated lasts longer than a conventional one.",
  material: '100% Biodegradable',
  impact: "Solid cosmetics make it possible not to use packaging and contribute to not generating more waste. It is efficient, practical and sustainable.",
  origin: 'Argentina'
  )

solidchampu_image_1 = URI.open('https://i.etsystatic.com/19391101/r/il/6152a1/2790729710/il_794xN.2790729710_qgnv.jpg')
solidchampu_image_2 = URI.open('https://i.etsystatic.com/19391101/r/il/0f939d/2790730250/il_794xN.2790730250_22du.jpg')
solidchampu_image_3 = URI.open('https://i.etsystatic.com/19391101/r/il/888a36/2838408333/il_794xN.2838408333_k0ix.jpg')
solidchampu_image_4 = URI.open('https://i.etsystatic.com/19391101/r/il/882c1b/2838408521/il_1588xN.2838408521_1feh.jpg')
solidchampu_image_5 = URI.open('https://i.etsystatic.com/25264999/r/il/9ab9cd/3072441706/il_1588xN.3072441706_eu8i.jpg')
solidchampu.photos.attach(io: solidchampu_image_1, filename: 'il_1588xN.3146583083_rz87.jpg', content_type: 'image/jpg')
solidchampu.photos.attach(io: solidchampu_image_2, filename: 'il_794xN.3008151605_o13e.jpg', content_type: 'image/jpg')
solidchampu.photos.attach(io: solidchampu_image_3, filename: 'il_794xN.2942410641_lybz.jpg', content_type: 'image/jpg')
solidchampu.photos.attach(io: solidchampu_image_4, filename: 'il_794xN.2942410515_tjhv.jpg', content_type: 'image/jpg')
solidchampu.photos.attach(io: solidchampu_image_5, filename: 'il_1588xN.3072441706_eu8i.jpg', content_type: 'image/jpg')

puts "solidchampu photo attached: #{solidchampu.photos.attached?}"

#Listings

solidchampu_sale = Listing.create!(
  stock: 1700,
  max_price: 7,
  min_price: 3,
  end_date: Date.today + 45,
  product: solidchampu
  )


breadbag_sale = Listing.create!(
  stock: 1000,
  max_price: 8,
  min_price: 5,
  end_date: Date.today + 45,
  product: breadbag
  )

towel_sale = Listing.create!(
  stock: 500,
  max_price: 30,
  min_price: 15,
  end_date: Date.today + 45,
  product: towel
  )

utensil_set = Listing.create!(
  stock: 12000,
  max_price: 14,
  min_price: 9,
  end_date: Date.today + 45,
  product: utensil_set
  )

coffee_cup = Listing.create!(
  stock: 13450,
  max_price: 1.99,
  min_price: 0.75,
  end_date: Date.today + 30,
  product: coffee_cup
  )

bagel_kraft = Listing.create!(
  stock: 1250,
  max_price: 0.99,
  min_price: 0.16,
  end_date: Date.today + 30,
  product: bagel_kraft
  )

buttle_pet = Listing.create!(
  stock: 1860,
  max_price: 0.5,
  min_price: 0.3,
  end_date: Date.today + 30,
  product: buttle_pet
  )

tablelinen_sale = Listing.create!(
  stock: 250,
  max_price: 50,
  min_price: 30,
  end_date: Date.today + 30,
  product: tablelinen
  )

dumptruck_sale = Listing.create!(
  stock: 5000,
  max_price: 15,
  min_price: 9,
  end_date: Date.today + 30,
  product: dumptruck
  )

toiletpaper_sale = Listing.create!(
  stock: 10000,
  max_price_cents: 800,
  min_price_cents: 200,
  end_date: Date.today + 30,
  product: toiletpaper
  )

lunchwraps_sale = Listing.create!(
  stock: 3000,
  max_price_cents: 1200,
  min_price_cents: 500,
  end_date: Date.today + 30,
  product: lunchwraps
  )

handbag_sale = Listing.create!(
  stock: 300,
  max_price_cents: 5000,
  min_price_cents: 3000,
  end_date: Date.today + 30,
  product: handbag
  )

sunglasses_sale = Listing.create!(
  stock: 700,
  max_price_cents: 10000,
  min_price_cents: 5500,
  end_date: Date.today + 30,
  product: sunglasses
  )

cup_holders = Listing.create!(
  stock: 6700,
  max_price_cents: 2.4,
  min_price_cents: 0.8,
  end_date: Date.today + 30,
  product: cup_holders
  )


dishwash_sale = Listing.create!(
  stock: 10000,
  max_price_cents: 800,
  min_price_cents: 500,
  end_date: Date.today + 30,
  product: dishwash
  )


toilet_paper_sale = Listing.create!(
  stock: 20000,
  max_price_cents: 700,
  min_price_cents: 300,
  end_date: Date.today + 30,
  product: toilet_paper
  )

mat_sale = Listing.create!(
  stock: 500,
  max_price_cents: 10000,
  min_price_cents: 7000,
  end_date: Date.today + 30,
  product: mat
  )

pants_sale = Listing.create!(
  stock: 1000,
  max_price_cents: 3000,
  min_price_cents: 2200,
  end_date: Date.today + 30,
  product: pants

  )

toothbrush_sale = Listing.create!(
  stock: 8000,
  max_price_cents: 1200,
  min_price_cents: 800,
  end_date: Date.today + 30,
  product: toothbrush
  )

swab_sale = Listing.create!(
  stock: 5000,
  max_price_cents: 800,
  min_price_cents: 600,
  end_date: Date.today + 30,
  product: swab
  )


women_t_shirt_sale = Listing.create!(
  stock: 9800,
  max_price_cents: 1700,
  min_price_cents: 1500,
  end_date: Date.today + 30,
  product: women_t_shirt
  )


socks_sale = Listing.create!(
  stock: 12000,
  max_price_cents: 900,
  min_price_cents: 600,
  end_date: Date.today + 30,
  product: socks
  )

bag_sale = Listing.create!(
  stock: 7000,
  max_price_cents: 2000,
  min_price_cents: 1200,
  end_date: Date.today + 30,
  product: bag
  )

sandal_sale = Listing.create!(
  stock: 5000,
  max_price_cents: 1000,
  min_price_cents: 700,
  end_date: Date.today + 30,
  product: sandal
  )

cup_sale = Listing.create!(
  stock: 10000,
  max_price_cents: 10,
  min_price_cents: 5,
  end_date: Date.today + 30,
  product: cup
  )

straw_sale = Listing.create!(
  stock: 7000,
  max_price_cents: 100,
  min_price_cents: 700,
  end_date: Date.today + 25,
  product: straw
  )

coffee_cup = Discount.create!(
  quantity: 3500,
  price: 1,
  listing: coffee_cup,
  )

bag_discount = Discount.create!(
  quantity: 4000,
  price: 15,
  listing: bag_sale,
  )

utensil_set  = Discount.create!(
  quantity: 2550,
  price: 12,
  listing: utensil_set,
  )

sandal_discount = Discount.create!(
  quantity: 4000,
  price: 7,
  listing: sandal_sale,
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

bag_purchase = Purchase.create!(
  user: pablito,
  listing: bag_sale,
  quantity: 200
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 200
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 500
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 400
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 450
  )

cup_purchase = Purchase.create!(
  user: mohamed,
  listing: cup_sale,
  quantity: 2000
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


bag_review = Review.create!(
  purchase: bag_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 3
)

sandal_review = Review.create!(
  purchase: sandal_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 5
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

