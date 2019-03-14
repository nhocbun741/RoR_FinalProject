class CreateOrderitems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.float :unit_price
      t.integer :quantity
      t.float :total_price
    end
  end
end
