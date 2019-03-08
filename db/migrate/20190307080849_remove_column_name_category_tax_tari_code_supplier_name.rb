class RemoveColumnNameCategoryTaxTariCodeSupplierName < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :NameCategory
    remove_column :products, :TaxTariCode
    remove_column :products, :SupplierName
  end
end
