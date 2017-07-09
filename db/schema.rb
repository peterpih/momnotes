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

ActiveRecord::Schema.define(version: 20170709162034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.text     "note"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.datetime "date"
    t.boolean  "bm",         default: false
  end

  create_table "excercises", force: :cascade do |t|
    t.datetime "time"
    t.text     "note"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "long_walk",  default: false
    t.boolean  "short_walk", default: false
  end

  create_table "exercises", force: :cascade do |t|
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_foods", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_meal_foods_on_food_id", using: :btree
    t.index ["meal_id"], name: "index_meal_foods_on_meal_id", using: :btree
  end

  create_table "meal_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "meal_type"
    t.datetime "date"
    t.string   "note"
  end

  create_table "snfs", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "address"
    t.string   "contact"
    t.string   "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
    t.text     "notes"
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toilets", force: :cascade do |t|
    t.datetime "in"
    t.datetime "out"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "interval"
    t.boolean  "inbed",      default: false
  end

end
