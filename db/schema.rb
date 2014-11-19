# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141118163836) do

  create_table "course_feedback", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "subject_id"
  end

  create_table "course_subjects", id: false, force: true do |t|
    t.string "course_id"
    t.string "subject_id"
  end

  create_table "courses", force: true do |t|
    t.string   "course_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "user_id"
    t.string   "subject_name"
    t.string   "strengths"
    t.string   "weaknesses"
    t.string   "recommendations"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["user_id", "created_at"], name: "index_feedbacks_on_user_id_and_created_at"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "ca_percent"
    t.integer  "final_exam_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
