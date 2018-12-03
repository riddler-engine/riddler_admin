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

ActiveRecord::Schema.define(version: 2018_11_24_201519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "riddler_elements", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", null: false
    t.string "name"
    t.string "container_type"
    t.string "container_id"
    t.integer "position"
    t.string "text"
    t.index ["container_type", "container_id"], name: "index_riddler_elements_on_container_type_and_container_id"
    t.index ["id"], name: "index_riddler_elements_on_id"
  end

  create_table "riddler_steps", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", null: false
    t.string "name"
    t.index ["id"], name: "index_riddler_steps_on_id"
  end

end
