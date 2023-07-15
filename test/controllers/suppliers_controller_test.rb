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
end
