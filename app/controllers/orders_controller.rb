class OrdersController < ApplicationController
  def create
    if current_user
      carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
      # pp product.price

      @order = Order.create(
        user_id: current_user.id,
      )
      if @order.valid?
        carted_products.update_all(status: "purchased", order_id: @order.id)
        @order.update_totals
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
