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

ActiveRecord::Schema.define(version: 20140729184458) do

  create_table "babyurls", force: true do |t|
    t.string   "ip"
    t.string   "url"
    t.string   "count"
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "url", id: false, force: true do |t|
    t.integer "id",    limit: 3,  null: false
    t.string  "ip",    limit: 20, null: false
    t.text    "url",              null: false
    t.string  "count",            null: false
    t.string  "tag",   limit: 50, null: false
  end

  add_index "url", ["id"], name: "id", using: :btree

end
