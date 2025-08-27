class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.references :pizzeria
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
