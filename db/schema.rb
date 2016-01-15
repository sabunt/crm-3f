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

ActiveRecord::Schema.define(version: 20160111095343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "client"
    t.string   "client_inn"
    t.string   "client_kpp"
    t.text     "client_adress"
    t.string   "client_site"
    t.string   "client_tel"
    t.string   "client_email"
    t.string   "client_ogrn"
    t.string   "client_ks"
    t.string   "client_rs"
    t.string   "client_bik"
    t.text     "client_bank"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "num"
    t.string   "date"
    t.integer  "costumer_id"
    t.string   "item_name"
    t.integer  "unit"
    t.integer  "price"
    t.integer  "price_total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "invoices", ["costumer_id"], name: "index_invoices_on_costumer_id", using: :btree

end
