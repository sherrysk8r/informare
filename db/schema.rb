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

ActiveRecord::Schema.define(version: 20151203202243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "election_year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "party"
    t.string   "graphic"
    t.string   "image"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "explored_issues", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "issue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "liked_quotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "quote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "body_of_text"
    t.integer  "candidate_id"
    t.integer  "issue_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "date_said"
    t.string   "source"
  end

  create_table "user_streaks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "streak"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.integer  "number_of_questions_answered", default: 0
    t.integer  "number_of_questions_correct",  default: 0
    t.integer  "current_streak",               default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
  end

end
