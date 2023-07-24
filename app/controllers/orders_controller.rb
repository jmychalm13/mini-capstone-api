class OrdersController < ApplicationController
  def create
    if current_user
      carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
      # pp product.price
      subtotal = 0
      for carted_product in carted_products
        price = carted_product.product.price
        quantity = carted_product.quantity
        subtotal += (price * quantity)
      end
      tax = subtotal * 0.09
      total = tax + subtotal
      @order = Order.create(
        user_id: current_user.id,
        subtotal: subtotal,
        tax: tax,
        total: total,
      )
      if @order.valid?
        carted_products.update_all(status: "purchased", order_id: @order.id)
        render template: "orders/show"
      else
        # sad path -> validations did not pass
        render json: { errors: @order.errors.full_messages }, status: 422
      end
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    if current_user
      @order = Order.find_by(id: params[:id], user_id: current_user.id)
      render template: "orders/show"
    else
      render json: [], status: :unauthorized
    end
  end

  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render template: "orders/index"
    else
      render json: [], status: :unauthorized
    end
  end
end
