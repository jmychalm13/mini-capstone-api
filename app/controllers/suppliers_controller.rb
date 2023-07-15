class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def create
    @supplier = Supplier.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render template: "suppliers/show"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
      name: params[:name] || @supplier.name,
      email: params[:email] || @supplier.email,
      phone_number: params[:phone_number] || @supplier.phone_number,
    )
    render template: "suppliers/show"
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy

    render json: { message: "Successfully DESTROYED!!!!" }
  end
end
