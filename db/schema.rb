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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availablecolors", primary_key: ["colorid", "sid"], force: :cascade do |t|
    t.serial "colorid", null: false
    t.serial "sid",     null: false
  end

  create_table "availablesizes", primary_key: ["sizeid", "sid"], force: :cascade do |t|
    t.serial  "sizeid",   null: false
    t.serial  "sid",      null: false
    t.integer "quantity", null: false
  end

  create_table "category", primary_key: "catid", force: :cascade do |t|
    t.string  "nom",   limit: 15,                null: false
    t.boolean "ismen",            default: true
    t.string  "image", limit: 50,                null: false
  end

  create_table "client", primary_key: "cid", force: :cascade do |t|
    t.string "fname",           limit: 30,               null: false
    t.string "lname",           limit: 30,               null: false
    t.string "email",           limit: 30,               null: false
    t.string "password_digest",                          null: false
    t.string "gender",                     default: "U"
    t.date   "dob"
    t.index ["email"], name: "client_email_key", unique: true, using: :btree
  end

  create_table "colors", primary_key: "colorid", force: :cascade do |t|
    t.string "color", limit: 10, null: false
  end

  create_table "orders", primary_key: "oid", force: :cascade do |t|
    t.time     "hour"
    t.integer  "sid",                               null: false
    t.integer  "cid",                               null: false
    t.integer  "quantity"
    t.integer  "flag",                              null: false
    t.integer  "colorid",                           null: false
    t.integer  "sizeid",                            null: false
    t.datetime "dor",      default: -> { "now()" }
  end

  create_table "shoes", primary_key: "sid", force: :cascade do |t|
    t.string  "name",  limit: 30, null: false
    t.integer "price",            null: false
    t.string  "image", limit: 50, null: false
    t.integer "catid",            null: false
  end

  create_table "sizes", primary_key: "sizeid", force: :cascade do |t|
    t.decimal "size", precision: 2, scale: 1, null: false
  end

  add_foreign_key "availablecolors", "colors", column: "colorid", primary_key: "colorid", name: "availablecolors_colorid_fkey"
  add_foreign_key "availablecolors", "shoes", column: "sid", primary_key: "sid", name: "availablecolors_sid_fkey"
  add_foreign_key "availablesizes", "shoes", column: "sid", primary_key: "sid", name: "availablesizes_sid_fkey"
  add_foreign_key "availablesizes", "sizes", column: "sizeid", primary_key: "sizeid", name: "availablesizes_sizeid_fkey"
  add_foreign_key "orders", "client", column: "cid", primary_key: "cid", name: "orders_cid_fkey"
  add_foreign_key "orders", "colors", column: "colorid", primary_key: "colorid", name: "orders_colorid_fkey"
  add_foreign_key "orders", "shoes", column: "sid", primary_key: "sid", name: "orders_sid_fkey"
  add_foreign_key "orders", "sizes", column: "sizeid", primary_key: "sizeid", name: "orders_sizeid_fkey"
  add_foreign_key "shoes", "category", column: "catid", primary_key: "catid", name: "shoes_catid_fkey"
end
