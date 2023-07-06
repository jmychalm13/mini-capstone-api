puts "Seeding started"
product = Product.new({ name: "Dog Toys", description: "some balls and stuff", price: 15, image_url: "https://www.amazon.com/Toozey-Teething-Stuffed-Squeaky-Non-Toxic/dp/B088BBLB9W" })
product.save

product = Product.new({ name: "a plant", description: "a tropical houseplant", price: 50, image_url: "https://m.media-amazon.com/images/I/51gBDzXrMbL._AC_SY879_.jpg" })
product.save

puts "Seeding completed"
