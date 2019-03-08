class ChangeColumnProductsPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :Price, :float
  end
end
