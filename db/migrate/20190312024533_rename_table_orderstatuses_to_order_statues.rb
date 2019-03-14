class RenameTableOrderstatusesToOrderStatues < ActiveRecord::Migration[5.2]
  def change
    rename_table :orderstatuses, :order_statuses
  end
end
