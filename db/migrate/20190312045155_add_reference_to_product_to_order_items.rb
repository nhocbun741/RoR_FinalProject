class AddReferenceToProductToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :product, index: true
  end
end
