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

ActiveRecord::Schema[7.0].define(version: 2022_04_15_194122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_orders", force: :cascade do |t|
    t.bigint "albums_id", null: false
    t.integer "quantity"
    t.bigint "orders_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["albums_id"], name: "index_album_orders_on_albums_id"
    t.index ["orders_id"], name: "index_album_orders_on_orders_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "album_name"
    t.decimal "price"
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.string "nationality"
    t.date "birth_date"
    t.date "death_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "name"
    t.boolean "active_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.float "total"
    t.bigint "customers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_orders_on_customers_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "song_name"
    t.integer "duration"
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  add_foreign_key "album_orders", "albums", column: "albums_id"
  add_foreign_key "album_orders", "orders", column: "orders_id"
  add_foreign_key "albums", "artists"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "songs", "albums"
end
