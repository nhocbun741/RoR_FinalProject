class AddReferenceFromOrderToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :order, index: true
  end
end
