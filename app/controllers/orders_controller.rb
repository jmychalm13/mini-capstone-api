class OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      # pp product.price
      subtotal = params[:quantity].to_i * product.price
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
