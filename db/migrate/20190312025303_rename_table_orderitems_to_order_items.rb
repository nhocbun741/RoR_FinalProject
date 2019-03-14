class RenameTableOrderitemsToOrderItems < ActiveRecord::Migration[5.2]
  def change
    rename_table :orderitems, :order_items
  end
end
