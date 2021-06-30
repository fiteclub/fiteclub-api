class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :organization
      t.string :degree
      t.integer :graduate_year

      t.timestamps
    end
  end
end
