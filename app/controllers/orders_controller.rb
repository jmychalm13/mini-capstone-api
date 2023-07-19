class OrdersController < ApplicationController
  def create
    @order = Order.create(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
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
