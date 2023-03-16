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

ActiveRecord::Schema[7.0].define(version: 2023_03_13_162216) do
  create_table "students", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Patronymic"
    t.string "Login"
    t.string "Password"
    t.integer "Key"
    t.string "FacultyName"
    t.string "GroupName"
  end

  create_table "subjects", force: :cascade do |t|
    t.text "SubjectName"
    t.text "Evaluation"
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_subjects_on_student_id"
  end

  add_foreign_key "subjects", "students"
end
