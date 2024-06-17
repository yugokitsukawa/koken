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

ActiveRecord::Schema.define(version: 2024_03_21_114743) do

  create_table "collabs", force: :cascade do |t|
    t.string "event"
    t.text "company"
    t.string "image"
    t.text "overview"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "images2"
    t.string "images3"
    t.string "images4"
    t.string "images5"
  end

  create_table "frees", force: :cascade do |t|
    t.string "number"
    t.string "image"
    t.string "catch"
    t.text "overview"
    t.text "company"
    t.text "member"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "images2"
    t.string "images3"
    t.string "images4"
    t.string "images5"
  end

  create_table "insides", force: :cascade do |t|
    t.string "event"
    t.string "image"
    t.text "overview"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "catch"
    t.string "images2"
    t.string "images3"
    t.string "images4"
    t.string "images5"
  end

  create_table "marketings", force: :cascade do |t|
    t.string "event"
    t.string "image"
    t.text "overview"
    t.string "result"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "catch"
    t.string "images2"
    t.string "images3"
    t.string "images4"
    t.string "images5"
  end

  create_table "offs", force: :cascade do |t|
    t.string "event"
    t.string "image"
    t.text "overview"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "catch"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
  end

end
