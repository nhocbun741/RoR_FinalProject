class AddReferenceToOrderToOrderItems2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :order_id
  end
end
