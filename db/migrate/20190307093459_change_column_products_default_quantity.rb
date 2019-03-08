class ChangeColumnProductsDefaultQuantity < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :Quantity, :integer, default: 0
  end
end
