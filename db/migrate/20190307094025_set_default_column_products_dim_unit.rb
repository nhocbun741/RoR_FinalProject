class SetDefaultColumnProductsDimUnit < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :DimUnit, :string, default: "cm"
  end
end
