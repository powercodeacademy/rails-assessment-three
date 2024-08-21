class Pizzeria < ApplicationRecord
  has_many :pizzas

  validates :name, :address, presence:true
end
