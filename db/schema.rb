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

ActiveRecord::Schema.define(version: 20160213144122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "program_name"
    t.string "email"
    t.string "phone"
    t.string "line_1"
    t.string "line_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
  end

  create_table "applications", force: :cascade do |t|
    t.integer "dwelling_id"
    t.integer "user_id"
  end

  create_table "dependents", force: :cascade do |t|
    t.integer "user_id"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "gender"
    t.date    "dob"
    t.string  "relationship"
    t.string  "ssn"
    t.integer "monthly_income"
    t.string  "source_of_income"
  end

  create_table "dwellings", force: :cascade do |t|
    t.integer "vendor_id"
    t.string  "name"
    t.string  "line_1"
    t.string  "line_2"
    t.string  "city"
    t.string  "state"
    t.string  "zipcode"
    t.integer "monthly_rent"
    t.string  "photo_url"
    t.boolean "is_active",    default: true
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "agency_id"
    t.boolean "is_qualified"
    t.integer "qualified_rent_amount"
    t.integer "voucher_amount"
  end

  create_table "races", force: :cascade do |t|
    t.string "category"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "race_id"
    t.string   "email",                 null: false
    t.string   "password_digest"
    t.string   "username"
    t.string   "gender"
    t.date     "dob"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ssn"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "monthly_income"
    t.string   "source_of_income"
    t.integer  "monthly_rent"
    t.integer  "estimated_utilities"
    t.string   "phone_home"
    t.string   "phone_work"
    t.boolean  "is_veteran"
    t.boolean  "is_service_man"
    t.boolean  "is_mobility_impaired"
    t.boolean  "is_hearing_impaired"
    t.boolean  "is_sight_impaired"
    t.boolean  "claim_disability"
    t.boolean  "has_hud_violation"
    t.boolean  "lived_in_ph_before"
    t.boolean  "has_criminal_activity"
    t.boolean  "owe_money_to_ha"
    t.boolean  "is_sex_offender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.string  "line_1"
    t.string  "line_2"
    t.string  "city"
    t.string  "state"
    t.string  "zipcode"
    t.string  "photo_url"
    t.boolean "is_active", default: true
  end

end
