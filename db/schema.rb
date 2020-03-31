# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_31_223015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.integer "gender"
    t.string "address"
    t.string "pn"
    t.string "national_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "practitioners", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "registration"
    t.string "location"
    t.string "email"
    t.string "fax"
    t.string "signature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "remarks"
    t.string "exam_done"
    t.string "note"
    t.float "bwt"
    t.float "bp"
    t.integer "p"
    t.string "lmp"
    t.string "fp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workplaces", force: :cascade do |t|
    t.string "name"
    t.string "registration"
    t.string "location"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "practitioner_id"
  end

end
