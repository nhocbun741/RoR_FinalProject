class SetDefaultColumnProductsUoM < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :UoM, :string, default: "PC"
  end
end
