class RemoveCategoryIdFromListItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :list_items, :category_id, :integer
  end
end
