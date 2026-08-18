class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.belongs_to :pizzeria, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
