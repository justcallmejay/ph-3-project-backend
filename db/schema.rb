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

ActiveRecord::Schema.define(version: 2023_02_09_191228) do

  create_table "carts", force: :cascade do |t|
    t.integer "quantity"
    t.float "total"
    t.integer "produce_id"
    t.integer "order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dsc_quantity"
    t.float "dsc_total"
    t.datetime "purchased_at"
    t.index ["order_id"], name: "index_carts_on_order_id"
    t.index ["produce_id"], name: "index_carts_on_produce_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.integer "credit_card"
    t.integer "exp_mon"
    t.integer "exp_yr"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produces", force: :cascade do |t|
    t.string "produce"
    t.float "price"
    t.integer "quantity"
    t.boolean "discount"
    t.float "discount_price"
    t.integer "discount_quantity"
    t.string "image"
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
