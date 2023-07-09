class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url],
    )

    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(
      name: params[:name] || product.name,
      description: params[:description] || product.description,
      price: params[:price] || product.price,
      image_url: params[:image_url] || product.image_url,
    )

    render json: product.as_json
  end
end
