class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.references :pizzeria
      t.string :name
      t.string :description
    end
  end
end
