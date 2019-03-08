class RemoveTableColumnProductsPrices < ActiveRecord::Migration[5.2]
  def change
    drop_table :column_products_prices
  end
end
