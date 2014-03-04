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

ActiveRecord::Schema.define(version: 20140304115420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "as", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bs", force: true do |t|
    t.integer  "a1_id"
    t.integer  "a2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bs", ["a1_id", "a2_id"], name: "index_bs_on_a1_id_and_a2_id", unique: true, using: :btree
  add_index "bs", ["a1_id"], name: "index_bs_on_a1_id", using: :btree
  add_index "bs", ["a2_id"], name: "index_bs_on_a2_id", using: :btree

end
