class SetDefaultColumnProductsWeightUnit < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :WeightUnit, :string, default: "KG"
  end
end
