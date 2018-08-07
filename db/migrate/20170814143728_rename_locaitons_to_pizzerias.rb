class RenameLocaitonsToPizzerias < ActiveRecord::Migration[5.1]
  def change
    rename_table :locations, :pizzerias
  end
end
