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

ActiveRecord::Schema.define(version: 2020_01_18_083853) do

  create_table "channel_shows", force: :cascade do |t|
    t.integer "channel_id"
    t.integer "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_channel_shows_on_channel_id"
    t.index ["show_id"], name: "index_channel_shows_on_show_id"
  end

  create_table "channels", force: :cascade do |t|
    t.string "name", null: false
    t.string "language", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "show_id"
    t.integer "channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_favorites_on_channel_id"
    t.index ["show_id"], name: "index_favorites_on_show_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "genre_shows", force: :cascade do |t|
    t.integer "show_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genre_shows_on_genre_id"
    t.index ["show_id"], name: "index_genre_shows_on_show_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_timings", force: :cascade do |t|
    t.string "day"
    t.integer "channel_id"
    t.integer "show_timings_id"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_show_timings_on_channel_id"
    t.index ["show_timings_id"], name: "index_show_timings_on_show_timings_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
