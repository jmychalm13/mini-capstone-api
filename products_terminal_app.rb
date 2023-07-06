require "http"

system "clear"

puts "Here's the secret place to view all the products... : )"

products = HTTP.get("http://localhost:3000/all_products")

pp products.parse
