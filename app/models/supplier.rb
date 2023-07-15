class Supplier < ApplicationRecord
  validates :email,
            format: { with: /\A(.+)@(.+)\z/, message: "Email invalid" },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
  validates :name, :email, :phone_number, presence: true
  validates :phone_number, length: { minimum: 10 }

  def big_box
    if @name == "Amazon"
      return true
    else
      return false
    end
  end
end
