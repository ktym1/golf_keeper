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

ActiveRecord::Schema.define(version: 20150206220443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: true do |t|
    t.integer  "round_id"
    t.integer  "match_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_length"
  end

  create_table "holes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "par"
    t.integer  "hole_number"
    t.integer  "handicap_rating"
    t.string   "gender",          limit: 1
  end

  create_table "matches", force: true do |t|
    t.integer  "course_id"
    t.integer  "player_id"
    t.integer  "tee_id"
    t.time     "end_date_old"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "end_date"
  end

  create_table "players", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.float    "handicap_index"
    t.string   "gender",          limit: 1
    t.boolean  "admin",                     default: false
    t.string   "avatar"
  end

  add_index "players", ["remember_token"], name: "index_players_on_remember_token", using: :btree

  create_table "rounds", force: true do |t|
    t.integer  "course_id"
    t.integer  "round_length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.integer  "tee_id"
    t.boolean  "round_complete", default: false
  end

  create_table "scores", force: true do |t|
    t.integer  "hole_id"
    t.integer  "score"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tees", force: true do |t|
    t.string   "colour"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yardages", force: true do |t|
    t.integer  "hole_id"
    t.integer  "tee_id"
    t.integer  "yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
