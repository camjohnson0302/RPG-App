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

ActiveRecord::Schema.define(version: 20150114210401) do

  create_table "careers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "pic_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers_homeworlds", id: false, force: true do |t|
    t.integer "career_id"
    t.integer "homeworld_id"
  end

  add_index "careers_homeworlds", ["career_id"], name: "index_careers_homeworlds_on_career_id"
  add_index "careers_homeworlds", ["homeworld_id"], name: "index_careers_homeworlds_on_homeworld_id"

  create_table "careers_traits", id: false, force: true do |t|
    t.integer "career_id"
    t.integer "trait_id"
  end

  add_index "careers_traits", ["career_id"], name: "index_careers_traits_on_career_id"
  add_index "careers_traits", ["trait_id"], name: "index_careers_traits_on_trait_id"

  create_table "homeworlds", force: true do |t|
    t.string   "planet_type"
    t.text     "description"
    t.string   "summary"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homeworlds_traits", id: false, force: true do |t|
    t.integer "homeworld_id"
    t.integer "trait_id"
  end

  add_index "homeworlds_traits", ["homeworld_id"], name: "index_homeworlds_traits_on_homeworld_id"
  add_index "homeworlds_traits", ["trait_id"], name: "index_homeworlds_traits_on_trait_id"

  create_table "items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_characters", force: true do |t|
    t.integer  "level"
    t.integer  "fate"
    t.integer  "current_fate"
    t.integer  "wounds"
    t.integer  "current_wounds"
    t.integer  "corruption"
    t.integer  "insanity"
    t.integer  "experience"
    t.integer  "spendable_experience"
    t.integer  "credits"
    t.text     "description"
    t.text     "background"
    t.text     "public_background"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
