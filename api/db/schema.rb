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

ActiveRecord::Schema.define(version: 20150227011503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.integer "serial_num",         limit: 8, null: false
    t.text    "location",                     null: false
    t.integer "upc_description_id", limit: 8
  end

  create_table "upc_descriptions", force: :cascade do |t|
    t.integer "upc",    limit: 8, null: false
    t.text    "vendor"
    t.text    "sizeof"
    t.text    "fit"
    t.text    "style"
    t.text    "color"
    t.text    "gender"
  end

  add_index "upc_descriptions", ["upc"], name: "index_upc_descriptions_on_upc", using: :btree

  add_foreign_key "products", "upc_descriptions", name: "products_upc_description_id_fkey"
end
