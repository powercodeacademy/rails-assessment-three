class Pizza < ApplicationRecord
  belongs_to :pizzeria

  validates_presence_of :name, :description

  accepts_nested_attributes_for :pizzeria
end
