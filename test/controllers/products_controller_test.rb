require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "User", email: "user@test.com", password: "password", password_confirmation: "password", admin: true)

    post "/sessions.json", params: { email: "user@test.com", password: "password" }

    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["name", "description", "price", "is_discounted?", "tax", "id", "supplier_id", "supplier", "images"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json",
           headers: { "Authorization" => "Bearer #{@jwt}" },
           params: { name: "test product", price: 15, supplier_id: Supplier.first.id, description: "test description" }
    end

    post "/products.json",
         headers: { "Authorization" => "Bearer #{@jwt}" },
         params: {}
    assert_response 422

    post "/products.json"
    assert_response 401
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json",
          headers: { "Authorization" => "Bearer #{@jwt}" },
          params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price.to_s, data["price"]
    assert_equal product.description, data["description"]

    patch "/products/#{product.id}.json",
          headers: { "Authorization" => "Bearer #{@jwt}" },
          params: { name: "" }
    assert_response 422

    patch "/products/#{product.id}.json"
    assert_response 401
  end

  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json",
             headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end

    delete "/products/#{Product.first.id}.json"
    assert_response 401
  end
end
