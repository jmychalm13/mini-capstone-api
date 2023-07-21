class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id],
    )

    # happy path -> data saved with no validation errors
    if @product.valid?
      render template: "products/show"
    else
      # sad path -> validations did not pass
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      description: params[:description] || @product.description,
      price: params[:price] || @product.price,
      supplier_id: params[:supplier_id] || @product.supplier_id,
    )

    if @product.valid?
      # happy path
      render template: "products/show"
    else
      # sad path -> validations did not pass
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    render json: { message: "Successfully DESTROYED!!!!!" }
  end
end
