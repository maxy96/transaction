# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_06_035617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_details", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "job"
    t.string "country"
    t.string "address"
    t.string "zip_code"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_client_details_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "remember_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "remember_token"
    t.string "amount"
    t.integer "reason"
    t.bigint "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_discounts_on_payment_id"
  end

  create_table "payment_details", force: :cascade do |t|
    t.string "remember_token"
    t.integer "currency"
    t.string "total_amount"
    t.string "total_discount"
    t.string "total_with_discount"
    t.bigint "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_payment_details_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date_payment"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_payments_on_client_id"
  end

  create_table "transaction_pays", force: :cascade do |t|
    t.string "remember_token"
    t.string "amount"
    t.integer "status"
    t.bigint "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_transaction_pays_on_payment_id"
  end

  add_foreign_key "client_details", "clients"
  add_foreign_key "discounts", "payments"
  add_foreign_key "payment_details", "payments"
  add_foreign_key "payments", "clients"
  add_foreign_key "transaction_pays", "payments"
end
