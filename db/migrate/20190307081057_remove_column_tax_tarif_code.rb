class RemoveColumnTaxTarifCode < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :TaxTarifCode
  end
end
