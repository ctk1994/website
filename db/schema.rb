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

ActiveRecord::Schema.define(version: 20140807204912) do

  create_table "chapter_positions", force: true do |t|
    t.string   "name"
    t.text     "title"
    t.integer  "dke_info_id"
    t.datetime "start_date"
    t.boolean  "disp"
    t.text     "contact"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapter_public_pages", force: true do |t|
    t.string   "pname"
    t.integer  "position_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapter_residences", force: true do |t|
    t.string   "name"
    t.integer  "floor"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transfers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_brother_dke_infos", force: true do |t|
    t.integer  "brother_id"
    t.text     "p_name"
    t.text     "project"
    t.text     "past_pos"
    t.integer  "big_id"
    t.integer  "residence_id"
    t.integer  "p_class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_brother_mit_infos", force: true do |t|
    t.integer  "brother_id"
    t.text     "majors"
    t.text     "minors"
    t.text     "concentration"
    t.text     "extracurriculars"
    t.text     "interests"
    t.text     "urops"
    t.text     "internships"
    t.text     "fav_classes"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_brothers", force: true do |t|
    t.integer  "user_id"
    t.text     "first_name"
    t.text     "last_name"
    t.string   "phone",        limit: 10
    t.text     "email"
    t.text     "bio"
    t.text     "activities"
    t.text     "hobbies"
    t.text     "pro_team"
    t.text     "college_team"
    t.text     "movie"
    t.text     "quote"
    t.text     "hometown"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_shadows", primary_key: "uname", force: true do |t|
    t.integer  "user_id"
    t.text     "passwd",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "uname",      limit: 8,  null: false
    t.string   "group",      limit: 9,  null: false
    t.string   "chicken",    limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["uname"], name: "index_users_on_uname", unique: true, using: :btree

end
