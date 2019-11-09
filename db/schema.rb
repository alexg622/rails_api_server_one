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

ActiveRecord::Schema.define(version: 2019_11_09_232640) do

  create_table "movies", force: :cascade do |t|
    t.string "title", default: "f"
    t.string "show_time", default: "f"
    t.string "price", default: "f"
    t.integer "theatre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["theatre_id"], name: "index_movies_on_theatre_id"
  end

  create_table "theatres", force: :cascade do |t|
    t.string "name", default: "f"
    t.string "street", default: "f"
    t.string "state", default: "f"
    t.string "city", default: "f"
    t.string "zip", default: "f"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
