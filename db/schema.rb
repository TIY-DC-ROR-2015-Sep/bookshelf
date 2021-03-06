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

ActiveRecord::Schema.define(version: 20151028233754) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.string  "street"
    t.string  "zip"
    t.string  "state"
    t.string  "city"
  end

  create_table "books", force: :cascade do |t|
    t.string   "title",          null: false
    t.string   "author"
    t.string   "tagline"
    t.datetime "checked_out"
    t.datetime "due_date"
    t.string   "genre"
    t.integer  "library_id"
    t.string   "publisher"
    t.string   "published_date"
    t.text     "description"
    t.string   "isbn"
    t.string   "page_count"
    t.string   "average_rating"
    t.string   "preview_link"
    t.string   "image_link"
  end

  create_table "checkouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.boolean  "overdue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.string  "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "admin"
    t.boolean  "editor"
    t.boolean  "publisher"
  end

end
