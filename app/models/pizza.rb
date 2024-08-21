class Pizza < ApplicationRecord
  belongs_to :pizzeria

  validates :name, presence: true
  validates :description, presence: true
end
