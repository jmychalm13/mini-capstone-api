class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )

    render template: "carted_products/show"
  end

  def index
    @carted_products = CartedProduct.all

    render template: "carted_products/index"
  end
end
