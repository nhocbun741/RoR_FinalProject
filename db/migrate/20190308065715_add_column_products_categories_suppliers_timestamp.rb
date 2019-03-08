class AddColumnProductsCategoriesSuppliersTimestamp < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :posted_at, :datetime, default: Date.current
    add_column :categories, :posted_at, :datetime, default: Date.current
    add_column :suppliers, :posted_at, :datetime, default: Date.current
  end
end
