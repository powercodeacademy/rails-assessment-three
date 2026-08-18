class Pizzeria < ApplicationRecord
  has_many :pizzas
  validates_uniqueness_of :name
  validates_presence_of :address
end
