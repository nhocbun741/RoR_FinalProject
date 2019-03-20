class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :action
      t.integer :amount
      t.string :authorization
      t.string :message
      t.text :params
      t.timestamps
    end
  end
end
