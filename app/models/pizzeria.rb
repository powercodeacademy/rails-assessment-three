class Pizzeria < ApplicationRecord
  has_many :pizzas

  validates :name, uniqueness: true
  validates :address, presence: true
end
