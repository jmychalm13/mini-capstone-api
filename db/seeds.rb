puts "Seeding started"
product = Product.new({ name: "Dog Toys", description: "some balls and stuff", price: 15, image_url: "https://www.amazon.com/Toozey-Teething-Stuffed-Squeaky-Non-Toxic/dp/B088BBLB9W" })
product.save

product = Product.new({ name: "a plant", description: "a tropical houseplant", price: 50, image_url: "https://m.media-amazon.com/images/I/51gBDzXrMbL._AC_SY879_.jpg" })
product.save

product = Product.new({ name: "Puppy", description: "an awesome pet", price: 1000, image_url: "https://media.istockphoto.com/id/636475496/photo/portrait-of-brown-puppy-with-bokeh-background.jpg?s=612x612&w=0&k=20&c=Ot63dQOYplm0kLJdlSVWbtKGwGkuZfnfdwH5ry9a6EQ=" })
product.save

product = Product.new({ name: "a casette player", description: "a vintage way to listen to music", price: 15, image_url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQosjWCVgEhGpZ1PksxT3CbTFPX1hstqK-EafSqCpMTypc0T0OawQPag240MQ4X6aiz4HpyEMaxQW5pcGJ2-ZRoSS8zIBoAmYlN0iV_IkSHZdoo72j85OAjZA&usqp=CAc" })
product.save

puts "Seeding completed"
