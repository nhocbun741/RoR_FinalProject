class AddFererentToSuppliersFromProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :supplier, index: true
  end
end
