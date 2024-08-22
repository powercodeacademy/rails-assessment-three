class Pizzeria < ApplicationRecord
  has_many :pizzas

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

end
