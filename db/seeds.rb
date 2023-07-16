puts "Seeding started"
# Product.create!([
#   {name: "Puppy", price: "15.0", image_url: "https://media.istockphoto.com/id/636475496/photo/portrait-of-brown-puppy-with-bokeh-background.jpg?s=612x612&w=0&k=20&c=Ot63dQOYplm0kLJdlSVWbtKGwGkuZfnfdwH5ry9a6EQ=", description: "an awesome pet", inventory: 23},
#   {name: "Snake Plant", price: "50.0", image_url: "https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGxhbnR8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60", description: "a tropical houseplant", inventory: 75},
#   {name: "a casette player", price: "15.0", image_url: "https://images.unsplash.com/photo-1593078166039-c9878df5c520?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80", description: "a vintage way to listen to music", inventory: 18},
#   {name: "Dog Toys", price: "15.0", image_url: "https://images.unsplash.com/photo-1535294435445-d7249524ef2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80", description: "some balls and stuff", inventory: 23},
#   {name: "kitten", price: "25.0", image_url: "https://images.unsplash.com/photo-1555685812-4b943f1cb0eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80", description: "a fluffy, sometimes standoffish pet", inventory: 5},
#   {name: "Record Player", price: "25.0", image_url: "https://images.unsplash.com/photo-1616681255209-368a2cd3e643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80", description: "turntable for playing vinyl records", inventory: 32}
# ])
# Supplier.create(
#   name: "Cool Pets",
#   email: "weSaleCoolPets@pets.com",
#   phone_number: "555-555-5555",
# )
# Supplier.create(
#   name: "Cool Stuff",
#   email: "weHaveAwesomeStuff@stuff.com",
#   phone_number: "421-334-5544",
# )
# Supplier.create(
#   name: "Plants Are Us",
#   email: "monstera@plants.com",
#   phone_number: "123-123-1232",
# )
Image.create(
  url: "https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGxhbnR8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60",
  product_id: 11,
)
Image.create(
  url: "https://images.unsplash.com/photo-1555685812-4b943f1cb0eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
  product_id: 7,
)
Image.create(
  url: "https://images.unsplash.com/photo-1590513945490-f4e782e25d9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHRpZSUyMGR5ZSUyMHNoaXJ0fGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
  product_id: 16,
)
Image.create(
  url: "https://images.unsplash.com/photo-1593078166039-c9878df5c520?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
  product_id: 4,
)
Image.create(
  url: "https://images.unsplash.com/photo-1616681255209-368a2cd3e643?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80",
  product_id: 14,
)
Image.create(
  url: "https://media.istockphoto.com/id/636475496/photo/portrait-of-brown-puppy-with-bokeh-background.jpg?s=612x612&w=0&k=20&c=Ot63dQOYplm0kLJdlSVWbtKGwGkuZfnfdwH5ry9a6EQ=",
  product_id: 3,
)
puts "Seeding complete"
