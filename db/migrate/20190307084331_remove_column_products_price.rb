class RemoveColumnProductsPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :Price
  end
end
