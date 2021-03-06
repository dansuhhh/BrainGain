# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160830213843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.text     "question",   null: false
    t.text     "answer",     null: false
    t.integer  "deck_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id", using: :btree

  create_table "decks", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description"
    t.integer  "subject_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "decks", ["subject_id"], name: "index_decks_on_subject_id", using: :btree

  create_table "masteries", force: :cascade do |t|
    t.integer  "user_id",                null: false
    t.integer  "card_id",                null: false
    t.integer  "level",      default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "masteries", ["card_id"], name: "index_masteries_on_card_id", using: :btree
  add_index "masteries", ["user_id", "card_id"], name: "index_masteries_on_user_id_and_card_id", unique: true, using: :btree
  add_index "masteries", ["user_id"], name: "index_masteries_on_user_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "title",              null: false
    t.integer  "author_id",          null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "subjects", ["author_id"], name: "index_subjects_on_author_id", using: :btree

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id",                    null: false
    t.integer  "subject_id",                 null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "flag",       default: false
  end

  add_index "subscriptions", ["subject_id"], name: "index_subscriptions_on_subject_id", using: :btree
  add_index "subscriptions", ["user_id", "subject_id"], name: "index_subscriptions_on_user_id_and_subject_id", unique: true, using: :btree
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
