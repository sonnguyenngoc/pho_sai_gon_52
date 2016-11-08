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

ActiveRecord::Schema.define(version: 20161108074857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "level"
    t.string   "is_drink",    default: "False"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_order_details", force: :cascade do |t|
    t.integer  "customer_order_id"
    t.integer  "menu_id"
    t.integer  "quantity"
    t.decimal  "price",             precision: 8, scale: 2
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "customer_orders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customer_reservations", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "customer_phone"
    t.datetime "order_time"
    t.text     "note"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "customer_number", default: 1
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tag_id"
    t.string   "image_url"
  end

  create_table "gallery_details", force: :cascade do |t|
    t.string   "image_url"
    t.integer  "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "order_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 1
  end

  add_index "line_items", ["menu_id"], name: "index_line_items_on_menu_id", using: :btree
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name_1"
    t.string   "name_2"
    t.text     "description"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parent_categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_url"
  end

  create_table "rails", force: :cascade do |t|
    t.string   "g"
    t.string   "model"
    t.string   "GalleryDetail"
    t.string   "image_url"
    t.integer  "gallery_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "time_order"
    t.text     "note"
    t.string   "customer_name"
    t.string   "customer_phone"
    t.string   "customer_email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "image_url"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "hour_en"
    t.string   "hour_de"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "line_items", "menus"
  add_foreign_key "line_items", "orders"
end
