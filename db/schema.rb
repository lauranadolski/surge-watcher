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

ActiveRecord::Schema.define(version: 4) do

  create_table "destinations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "origins", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "trip_estimates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "origin_id"
    t.integer "destination_id"
    t.integer "estimated_cost_cents_max"
    t.integer "primetime_percentage"
    t.index ["destination_id"], name: "index_trip_estimates_on_destination_id"
    t.index ["origin_id"], name: "index_trip_estimates_on_origin_id"
    t.index ["user_id"], name: "index_trip_estimates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
