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

ActiveRecord::Schema.define(version: 20141120075050) do

  create_table "authors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
    t.string   "author_name"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "published_by"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
  end

  create_table "clients", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "customers", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_salt"
    t.text     "address"
    t.string   "password_reset_token"
  end

  create_table "customers_profiles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "gender"
    t.string   "mobile"
    t.text     "address"
    t.integer  "customer_id"
    t.string   "country"
    t.string   "state"
  end

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
    t.string   "img"
  end

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.text     "customers_posts"
  end

end
