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

ActiveRecord::Schema.define(version: 20140908003050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins_stores", id: false, force: true do |t|
    t.integer "store_id"
    t.integer "admin_id"
  end

  create_table "collections", force: true do |t|
    t.string   "title"
    t.string   "feature_image"
    t.string   "description"
    t.string   "page_title"
    t.string   "meta_description"
    t.string   "url_handle"
    t.boolean  "visibility"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections_products", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "collection_id"
  end

  create_table "guests", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "state"
    t.string   "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_products", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "store_id"
    t.integer  "guest_id"
    t.boolean  "confirmed"
    t.string   "payment_status"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.string   "product_type"
    t.float    "price"
    t.string   "sku"
    t.float    "weight"
    t.integer  "quantity"
    t.string   "url_handle"
    t.boolean  "visibility"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "store_name"
    t.string   "homepage_title"
    t.string   "homepage_meta_description"
    t.string   "legal_business_name"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "state"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "youtube"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "state"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
