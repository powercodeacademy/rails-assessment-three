class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :description
      t.references :pizzeria, foreign_key: true

      t.timestamps
    end
  end
end
