class CreatePizzerias < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzerias do |t|
      t.string :name
      t.string :address
    end
  end
end
