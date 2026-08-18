class Pizza < ApplicationRecord
  belongs_to :pizzeria
  has_many :pizzas

  validates :name, presence: true
  validates :description, presence: true
end
