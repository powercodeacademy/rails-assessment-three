class Pizza < ApplicationRecord
  belongs_to :pizzeria
  validates_presence_of :name, :description
end
