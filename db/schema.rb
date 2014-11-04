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

ActiveRecord::Schema.define(version: 20141103195104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chemical_substances", force: true do |t|
    t.string   "name"
    t.string   "purity"
    t.string   "matter_states"
    t.boolean  "controlled"
    t.string   "legal_regime"
    t.string   "quantity"
    t.string   "cas"
    t.string   "use"
    t.string   "status"
    t.string   "responsible"
    t.string   "location"
    t.date     "expiration_date"
    t.string   "dangerous"
    t.boolean  "rI7"
    t.boolean  "rI4"
    t.boolean  "toxic"
    t.boolean  "oxidant"
    t.boolean  "explosive"
    t.boolean  "irritating"
    t.boolean  "inflamable"
    t.boolean  "corrosive"
    t.boolean  "nocive"
    t.boolean  "investigation"
    t.boolean  "teaching"
    t.boolean  "extention"
    t.boolean  "management"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumables", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "dimentions"
    t.string   "material"
    t.string   "quantity"
    t.string   "location"
    t.string   "use"
    t.string   "responsible"
    t.boolean  "investigation"
    t.boolean  "teaching"
    t.boolean  "extention"
    t.boolean  "management"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "model"
    t.string   "serial"
    t.integer  "national_good"
    t.string   "status"
    t.date     "last_calibration"
    t.text     "use"
    t.string   "responsible"
    t.string   "location"
    t.date     "adquisition_date"
    t.string   "buy_order"
    t.float    "cost"
    t.string   "bill"
    t.boolean  "investigation"
    t.boolean  "teaching"
    t.boolean  "extention"
    t.boolean  "management"
    t.string   "calibrated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instruments", force: true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "model"
    t.string   "measurement_unit"
    t.float    "capacity"
    t.string   "material"
    t.string   "use"
    t.string   "status"
    t.string   "location"
    t.date     "last_calibration"
    t.string   "responsible"
    t.integer  "national_good"
    t.boolean  "investigation"
    t.boolean  "teaching"
    t.boolean  "extention"
    t.boolean  "management"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", force: true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "type"
    t.integer  "national_good"
    t.string   "status"
    t.string   "use"
    t.string   "responsible"
    t.string   "location"
    t.string   "material"
    t.string   "bill"
    t.boolean  "from_set"
    t.boolean  "investigation"
    t.boolean  "teaching"
    t.boolean  "extention"
    t.boolean  "management"
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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
