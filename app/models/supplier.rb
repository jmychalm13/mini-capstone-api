class Supplier < ApplicationRecord
  validates :name, :email, :phone_number, presence: true
end
