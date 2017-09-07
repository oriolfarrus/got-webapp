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

ActiveRecord::Schema.define(version: 20170907182030) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "vicissitude_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["vicissitude_id"], name: "index_comments_on_vicissitude_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "motto"
    t.integer  "universe_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "finished"
    t.index ["universe_id"], name: "index_houses_on_universe_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "interval_masters", force: :cascade do |t|
    t.integer  "season_id"
    t.integer  "universe_id"
    t.string   "name"
    t.integer  "order"
    t.boolean  "finished"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["season_id"], name: "index_interval_masters_on_season_id"
    t.index ["universe_id"], name: "index_interval_masters_on_universe_id"
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.integer  "modifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vicissitudes", force: :cascade do |t|
    t.integer  "difficulty"
    t.text     "status"
    t.integer  "house_id"
    t.integer  "interval_master_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["house_id"], name: "index_vicissitudes_on_house_id"
    t.index ["interval_master_id"], name: "index_vicissitudes_on_interval_master_id"
  end

end
