require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/suppliers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Supplier.count, data.length
  end

  test "create" do
    assert_difference "Supplier.count", 1 do
      post "/suppliers.json", params: { name: "test supplier", email: "test@email.com", phone_number: "555-555-5555" }
      assert_response 200
    end
  end

  test "show" do
    get "/suppliers/#{Supplier.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "phone_number", "email"], data.keys
  end

  test "update" do
    supplier = Supplier.first
    patch "/suppliers/#{supplier.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
end
