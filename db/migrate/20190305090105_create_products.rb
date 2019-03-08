class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :ProductID
      t.string :NameCategory
      t.integer :TaxTarifCode
      t.string :SupplierName
      t.float :WeightMeasure
      t.string :WeightUnit
      t.text :Description
      t.datetime :DateOfSale
      t.string :ProductPicUrl
      t.string :Status
      t.integer :Quantity
      t.string :UoM
      t.string :CurrencyCode
      t.decimal :Price, precision: 10, scale: 2
      t.float :Width
      t.float :Depth
      t.float :Height
      t.string :DimUnit
    end
  end
end
