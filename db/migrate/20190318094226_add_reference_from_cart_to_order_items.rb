class AddReferenceFromCartToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :cart, index: true
  end
end
