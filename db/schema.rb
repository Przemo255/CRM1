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

ActiveRecord::Schema.define(version: 20141218172412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campain_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campains", force: true do |t|
    t.string   "name"
    t.string   "start_data"
    t.string   "end_data"
    t.float    "expected_income"
    t.float    "end_income"
    t.float    "cost"
    t.string   "status"
    t.string   "campain_type"
    t.text     "campain_description"
    t.integer  "campain_types_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campains", ["campain_types_id_id"], name: "index_campains_on_campain_types_id_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "email"
    t.string   "www"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "value"
    t.string   "manner"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "description"
    t.string   "email"
    t.string   "www"
    t.string   "phone"
    t.string   "adress"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.date     "date_start"
    t.date     "data_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
