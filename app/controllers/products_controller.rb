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
      name: "kitten",
      description: "a fluffy, standoffish pet",
      price: 25,
      image_url: "https://images.pexels.com/photos/1444321/pexels-photo-1444321.jpeg?cs=srgb&dl=pexels-cats-coming-1444321.jpg&fm=jpg",
    )

    render json: product.as_json
  end
end
