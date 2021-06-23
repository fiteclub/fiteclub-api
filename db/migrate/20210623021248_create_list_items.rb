class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.references :category, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
