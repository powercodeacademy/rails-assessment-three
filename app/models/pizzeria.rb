class Pizzeria < ApplicationRecord
  has_many :pizzas
  validates :name, uniqueness: true
  validates :address, uniqueness: true
end
