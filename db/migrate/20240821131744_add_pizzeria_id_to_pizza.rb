class AddPizzeriaIdToPizza < ActiveRecord::Migration[5.1]
  def change
    add_reference :pizzas, :pizzeria, foreign_key: true
  end
end
