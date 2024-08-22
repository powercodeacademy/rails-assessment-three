class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :description

      t.references :pizzeria, foreign_key: true
    end
  end
end
