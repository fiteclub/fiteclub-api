class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :organization
      t.string :title
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
