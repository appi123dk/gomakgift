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

ActiveRecord::Schema.define(version: 20170309003138) do

  create_table "banners", force: :cascade do |t|
    t.integer  "product_id",     limit: 4
    t.string   "background_url", limit: 255
    t.string   "product_url",    limit: 255
    t.boolean  "is_display",                 default: true
    t.boolean  "is_left",                    default: true
    t.integer  "display_order",  limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "banners", ["product_id"], name: "index_banners_on_product_id", using: :btree

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

  create_table "dices", force: :cascade do |t|
    t.string   "employee_name", limit: 255
    t.integer  "number",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

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
    t.boolean  "is_ordered",                        default: false
    t.boolean  "is_issued",                         default: false
    t.datetime "datetime_payed"
    t.datetime "datetime_designed"
    t.datetime "datetime_confirmed"
    t.datetime "datetime_ordered"
    t.datetime "datetime_finished"
    t.datetime "datetime_issued"
    t.datetime "datetime_delivered"
    t.boolean  "is_cancled",                        default: false
    t.datetime "datetime_cancled"
    t.datetime "datetime_returned"
    t.string   "merchant_uid",          limit: 255
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
    t.string   "title",                limit: 255
    t.string   "subtitle",             limit: 255
    t.text     "detail",               limit: 65535
    t.string   "product_image",        limit: 255
    t.integer  "price_id",             limit: 4
    t.integer  "quantity_id",          limit: 4
    t.boolean  "is_display",                         default: true
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "display_order",        limit: 4,     default: 0
    t.integer  "supply_price",         limit: 4,     default: 0
    t.integer  "delivery_cost",        limit: 4,     default: 0
    t.integer  "min_qty",              limit: 4,     default: 0
    t.string   "brand_name",           limit: 255
    t.integer  "print_package_cost",   limit: 4,     default: 0
    t.integer  "supplier_id",          limit: 4
    t.string   "mainpage_title",       limit: 255
    t.text     "mainpage_story",       limit: 65535
    t.string   "recommend_festival",   limit: 255
    t.string   "explain_package",      limit: 255
    t.string   "product_banner_image", limit: 255
    t.string   "category",             limit: 255
    t.string   "product_thumb",        limit: 255
    t.string   "remark",               limit: 255
    t.string   "composition_image",    limit: 255
    t.string   "print_image",          limit: 255
    t.string   "package_image",        limit: 255
    t.string   "product_composition",  limit: 255
  end

  add_index "products", ["price_id"], name: "index_products_on_price_id", using: :btree
  add_index "products", ["quantity_id"], name: "index_products_on_quantity_id", using: :btree
  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "project_name",   limit: 255
    t.string   "brand",          limit: 255
    t.string   "place",          limit: 255
    t.integer  "media_coverage", limit: 4
    t.integer  "instagram",      limit: 4,   default: 0
    t.integer  "facebook",       limit: 4,   default: 0
    t.integer  "kakao",          limit: 4,   default: 0
    t.integer  "newspaper",      limit: 4,   default: 0
    t.integer  "blog",           limit: 4,   default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

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

  create_table "recommend_areas", force: :cascade do |t|
    t.integer  "product_id",    limit: 4
    t.string   "img_url",       limit: 255
    t.string   "title",         limit: 255
    t.string   "subtitle",      limit: 255
    t.boolean  "is_display",                default: true
    t.integer  "display_order", limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "recommend_areas", ["product_id"], name: "index_recommend_areas_on_product_id", using: :btree

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

  create_table "suppliers", force: :cascade do |t|
    t.string   "company_name",  limit: 255
    t.string   "url",           limit: 255
    t.string   "category",      limit: 255
    t.integer  "print_cost",    limit: 4
    t.integer  "package_cost",  limit: 4
    t.string   "company_phone", limit: 255
    t.string   "company_fax",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "age",        limit: 255
    t.boolean  "female"
    t.integer  "project_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "surveys", ["project_id"], name: "index_surveys_on_project_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.integer  "supplier_id",   limit: 4
    t.string   "middle_banner", limit: 255
    t.string   "big_banner",    limit: 255
    t.string   "detail",        limit: 255
    t.boolean  "is_display",                default: true
    t.integer  "display_order", limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "themes", ["supplier_id"], name: "index_themes_on_supplier_id", using: :btree

  create_table "thumbnails", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.string   "img_url",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "thumbnails", ["product_id"], name: "index_thumbnails_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",          limit: 255
    t.string   "email",             limit: 255
    t.string   "phone",             limit: 255
    t.string   "address_number",    limit: 255
    t.string   "address",           limit: 255
    t.string   "address_detail",    limit: 255
    t.boolean  "private_check"
    t.string   "com_name",          limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "mailreceive_check",             default: false
  end

  add_foreign_key "products", "suppliers"
end
