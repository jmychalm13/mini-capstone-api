class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def update_totals
    subtotal = 0
    for carted_product in carted_products
      price = carted_product.product.price
      quantity = carted_product.quantity
      subtotal += (price * quantity)
    end
    tax = subtotal * 0.09
    total = tax + subtotal

    self.subtotal = subtotal
    self.tax = tax
    self.total = total
    self.save
  end
end
