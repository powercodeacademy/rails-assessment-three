class Pizza < ApplicationRecord
  belongs_to :pizzeria
  validates :name, presence: true
  validates :description, presence: true
  validates :pizzeria_id, presence: true
end
