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

ActiveRecord::Schema.define(version: 20141018220047) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "par"
    t.integer  "hole_number"
    t.integer  "handicap_rating"
  end

  create_table "players", force: true do |t|
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.float    "handicap_index"
  end

  add_index "players", ["remember_token"], name: "index_players_on_remember_token"

  create_table "ratings", force: true do |t|
    t.integer  "course_rating"
    t.integer  "slope_rating"
    t.integer  "course_id"
    t.integer  "teemarkercourse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.integer  "course_id"
    t.integer  "round_length"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
  end

  create_table "scores", force: true do |t|
    t.integer  "hole_id"
    t.integer  "score"
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teemarkercourses", force: true do |t|
    t.integer  "championship"
    t.integer  "blue"
    t.integer  "white"
    t.integer  "red"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yardage", force: true do |t|
    t.integer  "championship"
    t.integer  "blue"
    t.integer  "white"
    t.integer  "red"
    t.integer  "hole_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
