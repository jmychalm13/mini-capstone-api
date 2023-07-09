require "http"

system "clear"

puts "Here's the secret place to use the app : )"

products = HTTP.get("http://localhost:3000/products")

pp products.parse
