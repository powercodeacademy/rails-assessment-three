class Pizza < ApplicationRecord
  belongs_to :pizzeria

  validates :name, :description, presence: true
end
