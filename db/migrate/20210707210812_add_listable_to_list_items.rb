class AddListableToListItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :list_items, :listable, polymorphic: true, null: false
  end
end
