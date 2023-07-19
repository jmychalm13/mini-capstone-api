class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    # pp product.price
    subtotal = params[:quantity] * product.price
    tax = subtotal * 0.09
    total = tax + subtotal
    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total,
    )
    if @order.valid?
      render template: "orders/show"
    else
      # sad path -> validations did not pass
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render template: "orders/show"
  end

  def index
    @orders = Order.all
    render template: "orders/index"
  end
end
