class CreateColumnProductsPrice < ActiveRecord::Migration[5.2]
  def change
    create_table :column_products_prices do |t|
    add_column :products, :Price, :float
    end
  end
end
