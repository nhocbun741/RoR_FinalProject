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

ActiveRecord::Schema.define(version: 2019_03_11_092845) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "NameCategory"
    t.datetime "posted_at", default: "2019-03-08 00:00:00"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string "ProductID"
    t.float "WeightMeasure"
    t.string "WeightUnit", default: "KG"
    t.text "Description"
    t.date "DateOfSale", default: "2019-03-07"
    t.string "ProductPicUrl"
    t.string "Status"
    t.integer "Quantity", default: 0
    t.string "UoM", default: "PC"
    t.string "CurrencyCode", default: "EUR"
    t.float "Width"
    t.float "Depth"
    t.float "Height"
    t.string "DimUnit", default: "cm"
    t.integer "category_id"
    t.integer "supplier_id"
    t.string "Name"
    t.float "Price"
    t.datetime "posted_at", default: "2019-03-08 00:00:00"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "SupplierName"
    t.datetime "posted_at", default: "2019-03-08 00:00:00"
    t.datetime "created_at"
    t.datetime "updated_at"
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
