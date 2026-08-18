class Pizzeria < ApplicationRecord
  has_many :pizzas, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
