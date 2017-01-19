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

ActiveRecord::Schema.define(version: 20170119005436) do

  create_table "clients", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "com_name",       limit: 255
    t.string   "service_intro",  limit: 255
    t.string   "sectors",        limit: 255
    t.date     "contract_date"
    t.integer  "contract_month", limit: 4
    t.string   "manager",        limit: 255
    t.string   "manager_phone",  limit: 255
    t.string   "manager_email",  limit: 255
    t.string   "designer",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "category",   limit: 255
    t.string   "content",    limit: 255
    t.boolean  "is_replied",             default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "complex_questions", force: :cascade do |t|
    t.integer  "client_id",    limit: 4
    t.string   "package_name", limit: 255
    t.string   "step_2",       limit: 255,   default: "--- []\n"
    t.string   "step_3",       limit: 255,   default: "--- []\n"
    t.text     "step_4",       limit: 65535
    t.string   "step_5",       limit: 255
    t.text     "step_6",       limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "complex_questions", ["client_id"], name: "index_complex_questions_on_client_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",               limit: 4
    t.string   "arrive_username",       limit: 255
    t.string   "arrive_email",          limit: 255
    t.string   "arrive_address",        limit: 255
    t.string   "arrive_address_number", limit: 255
    t.string   "arrive_address_detail", limit: 255
    t.string   "arrive_phone",          limit: 255
    t.string   "pay_method",            limit: 255
    t.boolean  "is_payed",                          default: false
    t.boolean  "is_designed",                       default: false
    t.boolean  "is_confirmed",                      default: false
    t.string   "deliver_name",          limit: 255
    t.string   "deliver_number",        limit: 255
    t.boolean  "is_returned",                       default: false
    t.boolean  "is_finished",                       default: false
    t.string   "etc",                   limit: 255
    t.integer  "payment",               limit: 4
    t.string   "receipt_method",        limit: 255
    t.string   "com_register_number",   limit: 255
    t.string   "cash_receipt_number",   limit: 255
    t.date     "arrive_date"
    t.string   "deposit_name",          limit: 255
    t.boolean  "agreement_check",                   default: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "prices", force: :cascade do |t|
    t.string   "price_name", limit: 255, default: "단가"
    t.integer  "price_min",  limit: 4
    t.integer  "price_1",    limit: 4
    t.integer  "price_2",    limit: 4
    t.integer  "price_3",    limit: 4
    t.integer  "price_4",    limit: 4
    t.integer  "price_5",    limit: 4
    t.integer  "price_6",    limit: 4,   default: 0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "subtitle",      limit: 255
    t.string   "detail",        limit: 255
    t.string   "product_image", limit: 255
    t.string   "product_thumb", limit: 255
    t.integer  "price_id",      limit: 4
    t.integer  "quantity_id",   limit: 4
    t.boolean  "is_display",                default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "products", ["price_id"], name: "index_products_on_price_id", using: :btree
  add_index "products", ["quantity_id"], name: "index_products_on_quantity_id", using: :btree

  create_table "quantities", force: :cascade do |t|
    t.integer  "qty_max",    limit: 4
    t.integer  "qty_1",      limit: 4
    t.integer  "qty_2",      limit: 4
    t.integer  "qty_3",      limit: 4
    t.integer  "qty_4",      limit: 4
    t.integer  "qty_5",      limit: 4
    t.integer  "qty_6",      limit: 4, default: 0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "replies", force: :cascade do |t|
    t.integer  "comment_id", limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "replies", ["comment_id"], name: "index_replies_on_comment_id", using: :btree

  create_table "shoppingcarts", force: :cascade do |t|
    t.integer  "product_id",  limit: 4
    t.integer  "order_id",    limit: 4
    t.integer  "qty",         limit: 4
    t.boolean  "is_cart"
    t.string   "ip_address",  limit: 255
    t.integer  "total_price", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "shoppingcarts", ["order_id"], name: "index_shoppingcarts_on_order_id", using: :btree
  add_index "shoppingcarts", ["product_id"], name: "index_shoppingcarts_on_product_id", using: :btree

  create_table "simples", force: :cascade do |t|
    t.integer  "client_id",    limit: 4
    t.string   "package_name", limit: 255
    t.string   "step_2",       limit: 255
    t.text     "step_3",       limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "simples", ["client_id"], name: "index_simples_on_client_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",       limit: 255
    t.string   "email",          limit: 255
    t.string   "phone",          limit: 255
    t.string   "address_number", limit: 255
    t.string   "address",        limit: 255
    t.string   "address_detail", limit: 255
    t.boolean  "private_check"
    t.string   "com_name",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
