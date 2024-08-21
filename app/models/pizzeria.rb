class Pizzeria < ApplicationRecord
  has_many :pizzas

  validates :name, :address, uniqueness: true
end
