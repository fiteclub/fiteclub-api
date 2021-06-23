class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.string :github

      t.timestamps
    end
  end
end