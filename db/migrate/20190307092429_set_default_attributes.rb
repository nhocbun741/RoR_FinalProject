class SetDefaultAttributes < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :CurrencyCode, :string, default: "EUR"
    change_column :products, :Quantity, :integer, default: 1
    change_column :products, :DateOfSale, :date, default: Date.current
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
