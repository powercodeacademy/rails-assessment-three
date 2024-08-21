class Pizzeria < ApplicationRecord
  validates :name, uniqueness: true
  validates :address, presence: true

end
