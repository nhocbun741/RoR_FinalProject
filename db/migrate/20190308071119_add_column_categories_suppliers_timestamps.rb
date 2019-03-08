class AddColumnCategoriesSuppliersTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :categories, null: true
    add_timestamps :suppliers, null: true

  end
end
