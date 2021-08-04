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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_08_04_003048) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_08_04_005103) do
=======
ActiveRecord::Schema.define(version: 2021_08_04_001635) do
>>>>>>> 8eb94f753ae27b02b3b99c857841737f9e67cd66
>>>>>>> 980b03d3ae658149c056f0735f6431930063637d

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "experiences", force: :cascade do |t|
    t.integer "student_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "job_title"
    t.string "company_name"
    t.string "details"
=======
<<<<<<< HEAD
  create_table "educations", force: :cascade do |t|
    t.integer "student_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "degree"
    t.string "university_name"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.string "details"
=======
  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "short_bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "website_url"
    t.string "online_resume_url"
    t.string "github_url"
    t.string "photo"
>>>>>>> 8eb94f753ae27b02b3b99c857841737f9e67cd66
>>>>>>> 980b03d3ae658149c056f0735f6431930063637d
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
