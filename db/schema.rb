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

ActiveRecord::Schema.define(version: 20171014170641) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "webpage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "place_id"
    t.index ["place_id"], name: "index_contacts_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.integer "duration", default: 60
    t.integer "price", default: 0
    t.integer "google_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "indoor"
    t.integer "category_id"
    t.integer "visiting_time_id"
    t.index ["category_id"], name: "index_places_on_category_id"
    t.index ["visiting_time_id"], name: "index_places_on_visiting_time_id"
  end

  create_table "visiting_times", force: :cascade do |t|
    t.boolean "morning"
    t.boolean "midday"
    t.boolean "evening"
    t.boolean "night"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
