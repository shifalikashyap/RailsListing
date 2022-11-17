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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_114024) do
  create_table "stations", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "state"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "train_stations", force: :cascade do |t|
    t.integer "train_id", null: false
    t.integer "station_id", null: false
    t.integer "day"
    t.integer "distance_in_km"
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.datetime "total_halt_in_minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_id"], name: "index_train_stations_on_station_id"
    t.index ["train_id"], name: "index_train_stations_on_train_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "name"
    t.string "source_station"
    t.string "last_station"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "train_stations", "stations"
  add_foreign_key "train_stations", "trains"
end
