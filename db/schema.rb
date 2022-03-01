# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_01_210603) do

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_num"
    t.date "date"
    t.time "time"
    t.integer "depart_airport_id"
    t.integer "arrive_airport_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arrive_airport_id"], name: "index_flights_on_arrive_airport_id"
    t.index ["depart_airport_id"], name: "index_flights_on_depart_airport_id"
  end

  add_foreign_key "flights", "airports", column: "arrive_airport_id"
  add_foreign_key "flights", "airports", column: "depart_airport_id"
end
