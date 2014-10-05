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

ActiveRecord::Schema.define(version: 20141005065234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "first_name"
    t.string   "stage_name"
    t.string   "last_name"
    t.string   "agency"
    t.boolean  "isActor"
    t.string   "gender"
    t.date     "debut"
    t.date     "birthday"
    t.string   "bloodType"
    t.string   "horoscope"
    t.text     "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "artists", ["group_id"], name: "index_artists_on_group_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "agency"
    t.integer  "num_members"
    t.string   "gender"
    t.date     "debut"
    t.integer  "avg_age"
    t.string   "avg_height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
