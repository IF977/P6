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

ActiveRecord::Schema.define(version: 20160520193126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cardapios", force: :cascade do |t|
    t.string   "namep"
    t.integer  "qtd"
    t.string   "price"
    t.string   "total"
    t.integer  "manage_id"
    t.string   "mesa_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.json     "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dish_attachments", force: :cascade do |t|
    t.integer  "dish_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json     "images"
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "ingredients"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dishes_orders", id: false, force: :cascade do |t|
    t.integer "dish_id"
    t.integer "order_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "namep"
    t.integer  "qtd"
    t.string   "price"
    t.string   "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "manage_id"
    t.string   "mesa_n"
  end

  create_table "manages", force: :cascade do |t|
    t.string   "name"
    t.string   "price"
    t.string   "ingredient"
    t.json     "pictures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manages_orders", id: false, force: :cascade do |t|
    t.integer "manage_id"
    t.integer "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "n_order"
    t.string   "price"
    t.string   "n_table"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
