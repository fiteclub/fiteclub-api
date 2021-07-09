# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_09_170204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_categories_on_resume_id"
  end

  create_table "educations", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "organization"
    t.string "degree"
    t.integer "graduate_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "organization"
    t.string "title"
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_jobs_on_resume_id"
  end

  create_table "list_items", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "listable_type", null: false
    t.bigint "listable_id", null: false
    t.index ["listable_type", "listable_id"], name: "index_list_items_on_listable"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "github"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "categories", "resumes"
  add_foreign_key "educations", "resumes"
  add_foreign_key "jobs", "resumes"
end
